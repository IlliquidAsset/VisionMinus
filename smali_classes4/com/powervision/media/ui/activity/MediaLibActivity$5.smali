.class Lcom/powervision/media/ui/activity/MediaLibActivity$5;
.super Lio/reactivex/observers/DefaultObserver;
.source "MediaLibActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/activity/MediaLibActivity;->doDeleteFun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DefaultObserver<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/activity/MediaLibActivity;)V
    .locals 0

    .line 759
    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$5;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

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

    .line 767
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$5;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$700(Lcom/powervision/media/ui/activity/MediaLibActivity;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 759
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity$5;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$5;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$800(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-virtual {v0, p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->deleteMedia(Ljava/util/List;)V

    return-void
.end method
