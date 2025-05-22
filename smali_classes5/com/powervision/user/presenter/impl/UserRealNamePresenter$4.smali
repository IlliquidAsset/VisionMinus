.class Lcom/powervision/user/presenter/impl/UserRealNamePresenter$4;
.super Ljava/lang/Object;
.source "UserRealNamePresenter.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->reEditRnrSaveDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/powervision/user/bean/UrnBaseBean;",
        ">;"
    }
.end annotation


# instance fields
.field disposable:Lio/reactivex/disposables/Disposable;

.field final synthetic this$0:Lcom/powervision/user/presenter/impl/UserRealNamePresenter;


# direct methods
.method constructor <init>(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$4;->this$0:Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$4;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 209
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$4;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$4;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    .line 211
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$4;->disposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public onNext(Lcom/powervision/user/bean/UrnBaseBean;)V
    .locals 0

    .line 198
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$4;->this$0:Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    invoke-static {p1}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->access$800(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$4;->this$0:Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    invoke-static {p1}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->access$900(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/user/ui/view/IUserRealNameView;

    invoke-interface {p1}, Lcom/powervision/user/ui/view/IUserRealNameView;->urnSaveSuccess()V

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$4;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 202
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$4;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$4;->disposable:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 188
    check-cast p1, Lcom/powervision/user/bean/UrnBaseBean;

    invoke-virtual {p0, p1}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$4;->onNext(Lcom/powervision/user/bean/UrnBaseBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$4;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
