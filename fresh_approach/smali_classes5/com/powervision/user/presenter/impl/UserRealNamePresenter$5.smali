.class Lcom/powervision/user/presenter/impl/UserRealNamePresenter$5;
.super Ljava/lang/Object;
.source "UserRealNamePresenter.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->umRnrQueryDeviceList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/powervision/user/bean/UrnDeviceBean;",
        ">;"
    }
.end annotation


# instance fields
.field disposable:Lio/reactivex/disposables/Disposable;

.field final synthetic this$0:Lcom/powervision/user/presenter/impl/UserRealNamePresenter;


# direct methods
.method constructor <init>(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$5;->this$0:Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 235
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$5;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 255
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$5;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 256
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$5;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    .line 257
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$5;->disposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public onNext(Lcom/powervision/user/bean/UrnDeviceBean;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$5;->this$0:Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    invoke-static {v0}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->access$1000(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$5;->this$0:Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    invoke-static {v0}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->access$1100(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/ui/view/IUserRealNameView;

    invoke-virtual {p1}, Lcom/powervision/user/bean/UrnDeviceBean;->getDeviceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/powervision/user/ui/view/IUserRealNameView;->urnDeviceSuccess(Ljava/util/List;)V

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$5;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 248
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$5;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    .line 249
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$5;->disposable:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 234
    check-cast p1, Lcom/powervision/user/bean/UrnDeviceBean;

    invoke-virtual {p0, p1}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$5;->onNext(Lcom/powervision/user/bean/UrnDeviceBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$5;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
