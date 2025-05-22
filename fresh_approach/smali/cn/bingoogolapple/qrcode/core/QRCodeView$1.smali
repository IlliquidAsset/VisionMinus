.class Lcn/bingoogolapple/qrcode/core/QRCodeView$1;
.super Ljava/lang/Object;
.source "QRCodeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bingoogolapple/qrcode/core/QRCodeView;->openFlashlight()V
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

    .line 259
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$1;->this$0:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$1;->this$0:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    iget-object v0, v0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCameraPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->openFlashlight()V

    return-void
.end method
