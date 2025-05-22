.class Lcom/powervision/login/presenter/impl/CreateLoginPresenter$1;
.super Lcom/powervision/base/net/retrofit/SimpleObserver;
.source "CreateLoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->getCountryList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/net/retrofit/SimpleObserver<",
        "Ljava/util/List<",
        "Lcom/powervision/base/model/net/CountryListModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/login/presenter/impl/CreateLoginPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter$1;->this$0:Lcom/powervision/login/presenter/impl/CreateLoginPresenter;

    invoke-direct {p0}, Lcom/powervision/base/net/retrofit/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/powervision/base/net/exception/ApiException;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Lcom/powervision/base/net/retrofit/SimpleObserver;->onFailed(Lcom/powervision/base/net/exception/ApiException;)V

    .line 66
    iget-object v0, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter$1;->this$0:Lcom/powervision/login/presenter/impl/CreateLoginPresenter;

    invoke-static {v0}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->access$100(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/login/ui/view/ICreateLoginView;

    invoke-virtual {p1}, Lcom/powervision/base/net/exception/ApiException;->getStatus()I

    move-result v1

    invoke-virtual {p1}, Lcom/powervision/base/net/exception/ApiException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/powervision/login/ui/view/ICreateLoginView;->getCountryListFailed(ILjava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onSucceed(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter$1;->onSucceed(Ljava/util/List;)V

    return-void
.end method

.method protected onSucceed(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/net/CountryListModel;",
            ">;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter$1;->this$0:Lcom/powervision/login/presenter/impl/CreateLoginPresenter;

    invoke-static {v0}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->access$000(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/login/ui/view/ICreateLoginView;

    invoke-interface {v0, p1}, Lcom/powervision/login/ui/view/ICreateLoginView;->getCountryListResult(Ljava/util/List;)V

    return-void
.end method
