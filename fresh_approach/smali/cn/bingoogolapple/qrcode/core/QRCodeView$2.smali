.class Lcn/bingoogolapple/qrcode/core/QRCodeView$2;
.super Ljava/lang/Object;
.source "QRCodeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bingoogolapple/qrcode/core/QRCodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/bingoogolapple/qrcode/core/QRCodeView;


# direct methods
.method constructor <init>(Lcn/bingoogolapple/qrcode/core/QRCodeView;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$2;->this$0:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$2;->this$0:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    iget-object v0, v0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$2;->this$0:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    iget-boolean v0, v0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mSpotAble:Z

    if-eqz v0, :cond_0

    .line 434
    :try_start_0
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$2;->this$0:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    iget-object v0, v0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$2;->this$0:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
