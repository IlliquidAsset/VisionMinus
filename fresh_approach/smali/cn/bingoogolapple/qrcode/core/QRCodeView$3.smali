.class Lcn/bingoogolapple/qrcode/core/QRCodeView$3;
.super Ljava/lang/Object;
.source "QRCodeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bingoogolapple/qrcode/core/QRCodeView;->handleAutoZoom([Landroid/graphics/PointF;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/bingoogolapple/qrcode/core/QRCodeView;

.field final synthetic val$maxZoom:I

.field final synthetic val$result:Ljava/lang/String;

.field final synthetic val$zoom:I

.field final synthetic val$zoomStep:I


# direct methods
.method constructor <init>(Lcn/bingoogolapple/qrcode/core/QRCodeView;IIILjava/lang/String;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$3;->this$0:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    iput p2, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$3;->val$zoom:I

    iput p3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$3;->val$zoomStep:I

    iput p4, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$3;->val$maxZoom:I

    iput-object p5, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$3;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 544
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$3;->this$0:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$3;->val$zoom:I

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$3;->val$zoomStep:I

    add-int/2addr v2, v1

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$3;->val$maxZoom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$3;->val$result:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->access$000(Lcn/bingoogolapple/qrcode/core/QRCodeView;IILjava/lang/String;)V

    return-void
.end method
