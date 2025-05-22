.class Lcn/bingoogolapple/qrcode/core/CameraPreview$1;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bingoogolapple/qrcode/core/CameraPreview;->showCameraPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/bingoogolapple/qrcode/core/CameraPreview;


# direct methods
.method constructor <init>(Lcn/bingoogolapple/qrcode/core/CameraPreview;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview$1;->this$0:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview$1;->this$0:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-static {v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->access$000(Lcn/bingoogolapple/qrcode/core/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview$1;->this$0:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->access$102(Lcn/bingoogolapple/qrcode/core/CameraPreview;Z)Z

    .line 77
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview$1;->this$0:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 78
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 79
    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview$1;->this$0:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-static {v1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->access$000(Lcn/bingoogolapple/qrcode/core/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 81
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview$1;->this$0:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-static {v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->access$200(Lcn/bingoogolapple/qrcode/core/CameraPreview;)Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    move-result-object v0

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview$1;->this$0:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-static {v1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->access$000(Lcn/bingoogolapple/qrcode/core/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V

    .line 82
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview$1;->this$0:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-static {v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->access$000(Lcn/bingoogolapple/qrcode/core/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 83
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview$1;->this$0:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-static {v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->access$300(Lcn/bingoogolapple/qrcode/core/CameraPreview;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
