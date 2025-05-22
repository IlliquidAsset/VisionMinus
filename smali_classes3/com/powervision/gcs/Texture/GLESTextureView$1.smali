.class Lcom/powervision/gcs/Texture/GLESTextureView$1;
.super Ljava/lang/Object;
.source "GLESTextureView.java"

# interfaces
.implements Lcom/powervision/gcs/Texture/GLESTVThread$GLThreadStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/Texture/GLESTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/Texture/GLESTextureView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/Texture/GLESTextureView;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/powervision/gcs/Texture/GLESTextureView$1;->this$0:Lcom/powervision/gcs/Texture/GLESTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public threadIsOver()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTextureView$1;->this$0:Lcom/powervision/gcs/Texture/GLESTextureView;

    invoke-static {v0}, Lcom/powervision/gcs/Texture/GLESTextureView;->access$000(Lcom/powervision/gcs/Texture/GLESTextureView;)Lcom/powervision/gcs/Texture/GLESTVThread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/Texture/GLESTVThread;->setOnGLThreadStateListener(Lcom/powervision/gcs/Texture/GLESTVThread$GLThreadStateListener;)V

    .line 93
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTextureView$1;->this$0:Lcom/powervision/gcs/Texture/GLESTextureView;

    invoke-static {v0, v1}, Lcom/powervision/gcs/Texture/GLESTextureView;->access$002(Lcom/powervision/gcs/Texture/GLESTextureView;Lcom/powervision/gcs/Texture/GLESTVThread;)Lcom/powervision/gcs/Texture/GLESTVThread;

    .line 94
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTextureView$1;->this$0:Lcom/powervision/gcs/Texture/GLESTextureView;

    iget-object v0, v0, Lcom/powervision/gcs/Texture/GLESTextureView;->surface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTextureView$1;->this$0:Lcom/powervision/gcs/Texture/GLESTextureView;

    new-instance v1, Lcom/powervision/gcs/Texture/GLESTVThread;

    iget-object v2, p0, Lcom/powervision/gcs/Texture/GLESTextureView$1;->this$0:Lcom/powervision/gcs/Texture/GLESTextureView;

    iget-object v2, v2, Lcom/powervision/gcs/Texture/GLESTextureView;->surface:Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/powervision/gcs/Texture/GLESTextureView$1;->this$0:Lcom/powervision/gcs/Texture/GLESTextureView;

    invoke-static {v3}, Lcom/powervision/gcs/Texture/GLESTextureView;->access$100(Lcom/powervision/gcs/Texture/GLESTextureView;)Lcom/powervision/gcs/Texture/IGLESRenderer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/powervision/gcs/Texture/GLESTVThread;-><init>(Landroid/graphics/SurfaceTexture;Lcom/powervision/gcs/Texture/IGLESRenderer;)V

    invoke-static {v0, v1}, Lcom/powervision/gcs/Texture/GLESTextureView;->access$002(Lcom/powervision/gcs/Texture/GLESTextureView;Lcom/powervision/gcs/Texture/GLESTVThread;)Lcom/powervision/gcs/Texture/GLESTVThread;

    .line 96
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTextureView$1;->this$0:Lcom/powervision/gcs/Texture/GLESTextureView;

    invoke-static {v0}, Lcom/powervision/gcs/Texture/GLESTextureView;->access$000(Lcom/powervision/gcs/Texture/GLESTextureView;)Lcom/powervision/gcs/Texture/GLESTVThread;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/Texture/GLESTextureView$1;->this$0:Lcom/powervision/gcs/Texture/GLESTextureView;

    invoke-static {v1}, Lcom/powervision/gcs/Texture/GLESTextureView;->access$200(Lcom/powervision/gcs/Texture/GLESTextureView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/Texture/GLESTVThread;->setRenderMode(I)V

    .line 97
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTextureView$1;->this$0:Lcom/powervision/gcs/Texture/GLESTextureView;

    invoke-static {v0}, Lcom/powervision/gcs/Texture/GLESTextureView;->access$000(Lcom/powervision/gcs/Texture/GLESTextureView;)Lcom/powervision/gcs/Texture/GLESTVThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/Texture/GLESTVThread;->start()V

    .line 98
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTextureView$1;->this$0:Lcom/powervision/gcs/Texture/GLESTextureView;

    invoke-static {v0}, Lcom/powervision/gcs/Texture/GLESTextureView;->access$000(Lcom/powervision/gcs/Texture/GLESTextureView;)Lcom/powervision/gcs/Texture/GLESTVThread;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/Texture/GLESTextureView$1;->this$0:Lcom/powervision/gcs/Texture/GLESTextureView;

    iget-object v1, v1, Lcom/powervision/gcs/Texture/GLESTextureView;->listener:Lcom/powervision/gcs/Texture/GLESTVThread$GLThreadStateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/Texture/GLESTVThread;->setOnGLThreadStateListener(Lcom/powervision/gcs/Texture/GLESTVThread$GLThreadStateListener;)V

    .line 99
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTextureView$1;->this$0:Lcom/powervision/gcs/Texture/GLESTextureView;

    invoke-static {v0}, Lcom/powervision/gcs/Texture/GLESTextureView;->access$000(Lcom/powervision/gcs/Texture/GLESTextureView;)Lcom/powervision/gcs/Texture/GLESTVThread;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/Texture/GLESTextureView$1;->this$0:Lcom/powervision/gcs/Texture/GLESTextureView;

    iget v1, v1, Lcom/powervision/gcs/Texture/GLESTextureView;->width:I

    iget-object v2, p0, Lcom/powervision/gcs/Texture/GLESTextureView$1;->this$0:Lcom/powervision/gcs/Texture/GLESTextureView;

    iget v2, v2, Lcom/powervision/gcs/Texture/GLESTextureView;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/Texture/GLESTVThread;->onSurfaceChanged(II)V

    :cond_0
    return-void
.end method
