.class Lcom/powervision/media/ui/activity/VideoAlbumActivity$3;
.super Lio/reactivex/observers/DefaultObserver;
.source "VideoAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/activity/VideoAlbumActivity;->requestBasicPermission()V
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
.field final synthetic this$0:Lcom/powervision/media/ui/activity/VideoAlbumActivity;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/activity/VideoAlbumActivity;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$3;->this$0:Lcom/powervision/media/ui/activity/VideoAlbumActivity;

    invoke-direct {p0}, Lio/reactivex/observers/DefaultObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onNext$0$VideoAlbumActivity$3(Ljava/lang/Boolean;)V
    .locals 1

    .line 569
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 570
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$3;->this$0:Lcom/powervision/media/ui/activity/VideoAlbumActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->access$200(Lcom/powervision/media/ui/activity/VideoAlbumActivity;)V

    goto :goto_0

    .line 572
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$3;->this$0:Lcom/powervision/media/ui/activity/VideoAlbumActivity;

    sget v0, Lcom/powervision/media/R$string;->AP03_MediaLib_55:I

    invoke-virtual {p1, v0}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->getString(I)Ljava/lang/String;

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

    .line 568
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$3;->this$0:Lcom/powervision/media/ui/activity/VideoAlbumActivity;

    new-instance v1, Lcom/powervision/media/ui/activity/-$$Lambda$VideoAlbumActivity$3$dFL60bnui5qd8LuS6tav7PE3KCU;

    invoke-direct {v1, p0, p1}, Lcom/powervision/media/ui/activity/-$$Lambda$VideoAlbumActivity$3$dFL60bnui5qd8LuS6tav7PE3KCU;-><init>(Lcom/powervision/media/ui/activity/VideoAlbumActivity$3;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 565
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/VideoAlbumActivity$3;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method
