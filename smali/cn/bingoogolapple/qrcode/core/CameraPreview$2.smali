.class Lcn/bingoogolapple/qrcode/core/CameraPreview$2;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bingoogolapple/qrcode/core/CameraPreview;->handleFocusMetering(FFII)V
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

    .line 245
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview$2;->this$0:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "\u5bf9\u7126\u6d4b\u5149\u6210\u529f"

    .line 248
    invoke-static {p1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u5bf9\u7126\u6d4b\u5149\u5931\u8d25"

    .line 250
    invoke-static {p1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->e(Ljava/lang/String;)V

    .line 252
    :goto_0
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview$2;->this$0:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-static {p1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->access$300(Lcn/bingoogolapple/qrcode/core/CameraPreview;)V

    return-void
.end method
