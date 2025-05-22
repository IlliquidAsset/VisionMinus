.class Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$1;
.super Lcom/powervision/base/net/retrofit/SimpleObserver;
.source "InputVerifyCodePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;->phoneLogin(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/net/retrofit/SimpleObserver<",
        "Lcom/powervision/base/model/UserModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;


# direct methods
.method constructor <init>(Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$1;->this$0:Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;

    invoke-direct {p0}, Lcom/powervision/base/net/retrofit/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/powervision/base/net/exception/ApiException;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Lcom/powervision/base/net/retrofit/SimpleObserver;->onFailed(Lcom/powervision/base/net/exception/ApiException;)V

    .line 72
    iget-object v0, p0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$1;->this$0:Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;

    invoke-static {v0}, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;->access$100(Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/login/ui/view/IInputVerifyCodeView;

    invoke-virtual {p1}, Lcom/powervision/base/net/exception/ApiException;->getStatus()I

    move-result v1

    invoke-virtual {p1}, Lcom/powervision/base/net/exception/ApiException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/powervision/login/ui/view/IInputVerifyCodeView;->loginError(ILjava/lang/String;)V

    return-void
.end method

.method protected onSucceed(Lcom/powervision/base/model/UserModel;)V
    .locals 1

    .line 64
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    invoke-virtual {p1}, Lcom/powervision/base/model/UserModel;->getUser()Lcom/powervision/base/model/UserInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveUserInfo(Lcom/powervision/base/model/UserInfo;)V

    .line 66
    iget-object p1, p0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$1;->this$0:Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;

    invoke-static {p1}, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;->access$000(Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/login/ui/view/IInputVerifyCodeView;

    invoke-interface {p1}, Lcom/powervision/login/ui/view/IInputVerifyCodeView;->loginSuccess()V

    return-void
.end method

.method protected bridge synthetic onSucceed(Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p1, Lcom/powervision/base/model/UserModel;

    invoke-virtual {p0, p1}, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$1;->onSucceed(Lcom/powervision/base/model/UserModel;)V

    return-void
.end method
