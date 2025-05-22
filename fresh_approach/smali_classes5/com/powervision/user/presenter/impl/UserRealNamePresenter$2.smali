.class Lcom/powervision/user/presenter/impl/UserRealNamePresenter$2;
.super Ljava/lang/Object;
.source "UserRealNamePresenter.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->umRnrDeleteDevice(I)V
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

    .line 87
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$2;->this$0:Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$2;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$2;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$2;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$2;->disposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public onNext(Lcom/powervision/user/bean/UrnBaseBean;)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$2;->this$0:Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    invoke-static {p1}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->access$400(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$2;->this$0:Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    invoke-static {p1}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->access$500(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/user/ui/view/IUserRealNameView;

    invoke-interface {p1}, Lcom/powervision/user/ui/view/IUserRealNameView;->urnDeleteSuccess()V

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$2;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 101
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$2;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    .line 102
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$2;->disposable:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p1, Lcom/powervision/user/bean/UrnBaseBean;

    invoke-virtual {p0, p1}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$2;->onNext(Lcom/powervision/user/bean/UrnBaseBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$2;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
