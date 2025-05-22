.class Lcom/powervision/login/presenter/impl/CreateLoginPresenter$3;
.super Lcom/powervision/base/net/retrofit/SimpleObserver;
.source "CreateLoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->sendEmailValidation(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/net/retrofit/SimpleObserver<",
        "Lcom/powervision/base/model/net/SendEmailModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/login/presenter/impl/CreateLoginPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter$3;->this$0:Lcom/powervision/login/presenter/impl/CreateLoginPresenter;

    invoke-direct {p0}, Lcom/powervision/base/net/retrofit/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/powervision/base/net/exception/ApiException;)V
    .locals 2

    .line 184
    invoke-super {p0, p1}, Lcom/powervision/base/net/retrofit/SimpleObserver;->onFailed(Lcom/powervision/base/net/exception/ApiException;)V

    .line 185
    iget-object v0, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter$3;->this$0:Lcom/powervision/login/presenter/impl/CreateLoginPresenter;

    invoke-static {v0}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->access$500(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/login/ui/view/ICreateLoginView;

    invoke-virtual {p1}, Lcom/powervision/base/net/exception/ApiException;->getStatus()I

    move-result v1

    invoke-virtual {p1}, Lcom/powervision/base/net/exception/ApiException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/powervision/login/ui/view/ICreateLoginView;->onVerifyCodeFailed(ILjava/lang/String;)V

    return-void
.end method

.method protected onSucceed(Lcom/powervision/base/model/net/SendEmailModel;)V
    .locals 0

    .line 179
    iget-object p1, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter$3;->this$0:Lcom/powervision/login/presenter/impl/CreateLoginPresenter;

    invoke-static {p1}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->access$400(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/login/ui/view/ICreateLoginView;

    invoke-interface {p1}, Lcom/powervision/login/ui/view/ICreateLoginView;->onVerifyCodeSuccess()V

    return-void
.end method

.method protected bridge synthetic onSucceed(Ljava/lang/Object;)V
    .locals 0

    .line 176
    check-cast p1, Lcom/powervision/base/model/net/SendEmailModel;

    invoke-virtual {p0, p1}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter$3;->onSucceed(Lcom/powervision/base/model/net/SendEmailModel;)V

    return-void
.end method
