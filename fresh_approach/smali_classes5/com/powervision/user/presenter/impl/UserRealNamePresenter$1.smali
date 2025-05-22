.class Lcom/powervision/user/presenter/impl/UserRealNamePresenter$1;
.super Ljava/lang/Object;
.source "UserRealNamePresenter.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->umRnrQueryHadDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/powervision/user/bean/UrnRegisterBean;",
        ">;"
    }
.end annotation


# instance fields
.field disposable:Lio/reactivex/disposables/Disposable;

.field final synthetic this$0:Lcom/powervision/user/presenter/impl/UserRealNamePresenter;


# direct methods
.method constructor <init>(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$1;->this$0:Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$1;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$1;->this$0:Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    invoke-static {v0}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->access$200(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$1;->this$0:Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    invoke-static {v0}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->access$300(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/ui/view/IUserRealNameView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/powervision/user/ui/view/IUserRealNameView;->urnFail(Ljava/lang/String;)V

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$1;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$1;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$1;->disposable:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public onNext(Lcom/powervision/user/bean/UrnRegisterBean;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$1;->this$0:Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    invoke-static {v0}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->access$000(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$1;->this$0:Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    invoke-static {v0}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->access$100(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/ui/view/IUserRealNameView;

    invoke-virtual {p1}, Lcom/powervision/user/bean/UrnRegisterBean;->getUserDeviceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/powervision/user/ui/view/IUserRealNameView;->urnRegisterSuccess(Ljava/util/List;)V

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$1;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$1;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$1;->disposable:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/powervision/user/bean/UrnRegisterBean;

    invoke-virtual {p0, p1}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$1;->onNext(Lcom/powervision/user/bean/UrnRegisterBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$1;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
