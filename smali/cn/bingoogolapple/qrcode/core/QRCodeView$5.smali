.class Lcn/bingoogolapple/qrcode/core/QRCodeView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QRCodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bingoogolapple/qrcode/core/QRCodeView;->startAutoZoom(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/bingoogolapple/qrcode/core/QRCodeView;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/bingoogolapple/qrcode/core/QRCodeView;Ljava/lang/String;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$5;->this$0:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    iput-object p2, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$5;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 567
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$5;->this$0:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    new-instance v0, Lcn/bingoogolapple/qrcode/core/ScanResult;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$5;->val$result:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcn/bingoogolapple/qrcode/core/ScanResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->onPostParseData(Lcn/bingoogolapple/qrcode/core/ScanResult;)V

    return-void
.end method
