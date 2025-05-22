.class Lcom/lewis/edit/presenter/impl/AVEditPresenter$16;
.super Lio/reactivex/subscribers/DisposableSubscriber;
.source "AVEditPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewis/edit/presenter/impl/AVEditPresenter;->workVideoSeparate(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/subscribers/DisposableSubscriber<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;


# direct methods
.method constructor <init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V
    .locals 0

    .line 1262
    iput-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$16;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-direct {p0}, Lio/reactivex/subscribers/DisposableSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "edit video-separate complete"

    .line 1281
    invoke-static {v1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit video-separate error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1273
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$16;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1275
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$16;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$5800(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {p1}, Lcom/lewis/edit/ui/view/IAVEditView;->cancelDialog()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1262
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$16;->onNext(Ljava/util/List;)V

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

    .line 1265
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$16;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$16;->this$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-static {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->access$5700(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {v0, p1}, Lcom/lewis/edit/ui/view/IAVEditView;->separateVideoSuccess(Ljava/util/List;)V

    :cond_0
    return-void
.end method
