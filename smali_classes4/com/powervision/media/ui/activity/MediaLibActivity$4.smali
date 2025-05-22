.class Lcom/powervision/media/ui/activity/MediaLibActivity$4;
.super Lio/reactivex/observers/DefaultObserver;
.source "MediaLibActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/activity/MediaLibActivity;->doCollectFun()V
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

    .line 730
    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$4;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

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

    .line 738
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$4;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$700(Lcom/powervision/media/ui/activity/MediaLibActivity;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 730
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity$4;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 733
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$4;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$600(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$4;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {v1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$500(Lcom/powervision/media/ui/activity/MediaLibActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->saveAndCancelSave(ZLjava/util/List;)V

    return-void
.end method
