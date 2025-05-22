.class Lcom/powervision/media/ui/activity/ImageAlbumActivity$3;
.super Lio/reactivex/observers/DefaultObserver;
.source "ImageAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/activity/ImageAlbumActivity;->requestBasicPermission()V
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
.field final synthetic this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/activity/ImageAlbumActivity;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$3;->this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    invoke-direct {p0}, Lio/reactivex/observers/DefaultObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onNext$0$ImageAlbumActivity$3(Ljava/lang/Boolean;)V
    .locals 1

    .line 546
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 547
    iget-object p1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$3;->this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->access$400(Lcom/powervision/media/ui/activity/ImageAlbumActivity;)V

    goto :goto_0

    .line 549
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$3;->this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    sget v0, Lcom/powervision/media/R$string;->AP03_MediaLib_55:I

    invoke-virtual {p1, v0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Ljava/lang/Boolean;)V
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$3;->this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    new-instance v1, Lcom/powervision/media/ui/activity/-$$Lambda$ImageAlbumActivity$3$yXslYfdASxae_ZAZDJ3WkzczcOM;

    invoke-direct {v1, p0, p1}, Lcom/powervision/media/ui/activity/-$$Lambda$ImageAlbumActivity$3$yXslYfdASxae_ZAZDJ3WkzczcOM;-><init>(Lcom/powervision/media/ui/activity/ImageAlbumActivity$3;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 542
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/ImageAlbumActivity$3;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method
