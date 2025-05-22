.class Lcom/powervision/user/presenter/impl/BindPresenter$1;
.super Lcom/powervision/base/net/observable/RequestObservable;
.source "BindPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/presenter/impl/BindPresenter;->verificationCode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/net/observable/RequestObservable<",
        "Lcom/powervision/base/model/GetCodeModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/user/presenter/impl/BindPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/user/presenter/impl/BindPresenter;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/BindPresenter$1;->this$0:Lcom/powervision/user/presenter/impl/BindPresenter;

    invoke-direct {p0}, Lcom/powervision/base/net/observable/RequestObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/powervision/base/net/exception/ApiException;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/BindPresenter$1;->this$0:Lcom/powervision/user/presenter/impl/BindPresenter;

    invoke-static {v0}, Lcom/powervision/user/presenter/impl/BindPresenter;->access$100(Lcom/powervision/user/presenter/impl/BindPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/ui/view/IBindView;

    invoke-virtual {p1}, Lcom/powervision/base/net/exception/ApiException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/powervision/user/ui/view/IBindView;->failure(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/powervision/base/model/GetCodeModel;)V
    .locals 1

    .line 56
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/BindPresenter$1;->this$0:Lcom/powervision/user/presenter/impl/BindPresenter;

    invoke-static {p1}, Lcom/powervision/user/presenter/impl/BindPresenter;->access$000(Lcom/powervision/user/presenter/impl/BindPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/user/ui/view/IBindView;

    const/16 v0, 0x64

    invoke-interface {p1, v0}, Lcom/powervision/user/ui/view/IBindView;->success(I)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    check-cast p1, Lcom/powervision/base/model/GetCodeModel;

    invoke-virtual {p0, p1}, Lcom/powervision/user/presenter/impl/BindPresenter$1;->onSuccess(Lcom/powervision/base/model/GetCodeModel;)V

    return-void
.end method
