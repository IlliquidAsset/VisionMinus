.class Lcom/powervision/home/ui/activity/QrCaptureActivity$1;
.super Lio/reactivex/observers/DefaultObserver;
.source "QrCaptureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/activity/QrCaptureActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DefaultObserver<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/activity/QrCaptureActivity;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/QrCaptureActivity;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity$1;->this$0:Lcom/powervision/home/ui/activity/QrCaptureActivity;

    invoke-direct {p0}, Lio/reactivex/observers/DefaultObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Ljava/lang/Boolean;)V
    .locals 0

    .line 137
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity$1;->this$0:Lcom/powervision/home/ui/activity/QrCaptureActivity;

    iget-object p1, p1, Lcom/powervision/home/ui/activity/QrCaptureActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startCamera()V

    .line 139
    iget-object p1, p0, Lcom/powervision/home/ui/activity/QrCaptureActivity$1;->this$0:Lcom/powervision/home/ui/activity/QrCaptureActivity;

    iget-object p1, p1, Lcom/powervision/home/ui/activity/QrCaptureActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpotAndShowRect()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 134
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/QrCaptureActivity$1;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method
