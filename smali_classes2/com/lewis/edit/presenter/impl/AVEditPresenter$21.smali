.class Lcom/lewis/edit/presenter/impl/AVEditPresenter$21;
.super Lio/reactivex/observers/DefaultObserver;
.source "AVEditPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewis/edit/presenter/impl/AVEditPresenter;->workEditVideo(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DefaultObserver<",
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

.field final synthetic val$isInitFlag:I


# direct methods
.method constructor <init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;I)V
    .locals 0

    .line 1495
    iput-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$21;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    iput p2, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$21;->val$isInitFlag:I

    invoke-direct {p0}, Lio/reactivex/observers/DefaultObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    const-string v0, "edit-init-add-video-complete"

    .line 1510
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit-init-add-video-error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1495
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$21;->onNext(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onNext(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1498
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$21;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$21;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$6600(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    iget v1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$21;->val$isInitFlag:I

    invoke-interface {v0, p1, v1}, Lcom/lewis/edit/ui/view/IAVEditView;->workEditVideoSuccess(Ljava/util/ArrayList;I)V

    :cond_0
    return-void
.end method
