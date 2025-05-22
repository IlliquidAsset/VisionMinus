.class Lcom/powervision/user/presenter/impl/PersonalInfoPresenter$2;
.super Lcom/powervision/base/net/observable/RequestObservable;
.source "PersonalInfoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;->modifyPersonalInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/net/observable/RequestObservable<",
        "Lcom/powervision/base/model/UserModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter$2;->this$0:Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;

    invoke-direct {p0}, Lcom/powervision/base/net/observable/RequestObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/powervision/base/net/exception/ApiException;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter$2;->this$0:Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;

    invoke-static {v0}, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;->access$400(Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/ui/view/IPersonalInfoView;

    invoke-virtual {p1}, Lcom/powervision/base/net/exception/ApiException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/powervision/user/ui/view/IPersonalInfoView;->failure(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/powervision/base/model/UserModel;)V
    .locals 1

    .line 85
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    invoke-virtual {p1}, Lcom/powervision/base/model/UserModel;->getUser()Lcom/powervision/base/model/UserInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveUserInfo(Lcom/powervision/base/model/UserInfo;)V

    .line 86
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter$2;->this$0:Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;

    invoke-static {p1}, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;->access$300(Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/user/ui/view/IPersonalInfoView;

    const/16 v0, 0x190

    invoke-interface {p1, v0}, Lcom/powervision/user/ui/view/IPersonalInfoView;->success(I)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    check-cast p1, Lcom/powervision/base/model/UserModel;

    invoke-virtual {p0, p1}, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter$2;->onSuccess(Lcom/powervision/base/model/UserModel;)V

    return-void
.end method
