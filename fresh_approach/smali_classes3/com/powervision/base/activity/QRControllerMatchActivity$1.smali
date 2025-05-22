.class Lcom/powervision/base/activity/QRControllerMatchActivity$1;
.super Ljava/lang/Object;
.source "QRControllerMatchActivity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/activity/QRControllerMatchActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/activity/QRControllerMatchActivity;


# direct methods
.method constructor <init>(Lcom/powervision/base/activity/QRControllerMatchActivity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity$1;->this$0:Lcom/powervision/base/activity/QRControllerMatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boolean = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QRControllerMatchActivity"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity$1;->this$0:Lcom/powervision/base/activity/QRControllerMatchActivity;

    invoke-static {p1}, Lcom/powervision/base/activity/QRControllerMatchActivity;->access$000(Lcom/powervision/base/activity/QRControllerMatchActivity;)Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startCamera()V

    .line 62
    iget-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity$1;->this$0:Lcom/powervision/base/activity/QRControllerMatchActivity;

    invoke-static {p1}, Lcom/powervision/base/activity/QRControllerMatchActivity;->access$000(Lcom/powervision/base/activity/QRControllerMatchActivity;)Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpotAndShowRect()V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/powervision/base/activity/QRControllerMatchActivity$1;->this$0:Lcom/powervision/base/activity/QRControllerMatchActivity;

    invoke-virtual {p1}, Lcom/powervision/base/activity/QRControllerMatchActivity;->finish()V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/powervision/base/activity/QRControllerMatchActivity$1;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
