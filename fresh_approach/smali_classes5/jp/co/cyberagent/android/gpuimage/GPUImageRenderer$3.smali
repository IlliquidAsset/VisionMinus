.class Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$3;
.super Ljava/lang/Object;
.source "GPUImageRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

.field final synthetic val$filter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V
    .locals 0

    .line 192
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$3;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$3;->val$filter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 196
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$3;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$600(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object v0

    .line 197
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$3;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$3;->val$filter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-static {v1, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$602(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->destroy()V

    .line 201
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$3;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$600(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object v0

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->init()V

    .line 202
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$3;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$600(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object v0

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 203
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$3;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$600(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object v0

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$3;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$700(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)I

    move-result v1

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$3;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$800(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onOutputSizeChanged(II)V

    return-void
.end method
