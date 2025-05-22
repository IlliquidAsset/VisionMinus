.class Lcom/powervision/user/presenter/impl/BindPresenter$3;
.super Lcom/powervision/base/net/retrofit/SimpleObserver;
.source "BindPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/presenter/impl/BindPresenter;->bindPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/net/retrofit/SimpleObserver<",
        "Lcom/powervision/base/model/EmptyModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/user/presenter/impl/BindPresenter;

.field final synthetic val$account:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/user/presenter/impl/BindPresenter;Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/BindPresenter$3;->this$0:Lcom/powervision/user/presenter/impl/BindPresenter;

    iput-object p2, p0, Lcom/powervision/user/presenter/impl/BindPresenter$3;->val$account:Ljava/lang/String;

    invoke-direct {p0}, Lcom/powervision/base/net/retrofit/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/powervision/base/net/exception/ApiException;)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Lcom/powervision/base/net/retrofit/SimpleObserver;->onFailed(Lcom/powervision/base/net/exception/ApiException;)V

    .line 105
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/BindPresenter$3;->this$0:Lcom/powervision/user/presenter/impl/BindPresenter;

    invoke-static {v0}, Lcom/powervision/user/presenter/impl/BindPresenter;->access$400(Lcom/powervision/user/presenter/impl/BindPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/ui/view/IBindView;

    invoke-virtual {p1}, Lcom/powervision/base/net/exception/ApiException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/powervision/user/ui/view/IBindView;->failure(Ljava/lang/String;)V

    return-void
.end method

.method protected onSucceed(Lcom/powervision/base/model/EmptyModel;)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/BindPresenter$3;->this$0:Lcom/powervision/user/presenter/impl/BindPresenter;

    iget-object v0, p0, Lcom/powervision/user/presenter/impl/BindPresenter$3;->val$account:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/powervision/user/presenter/impl/BindPresenter;->access$200(Lcom/powervision/user/presenter/impl/BindPresenter;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onSucceed(Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p1, Lcom/powervision/base/model/EmptyModel;

    invoke-virtual {p0, p1}, Lcom/powervision/user/presenter/impl/BindPresenter$3;->onSucceed(Lcom/powervision/base/model/EmptyModel;)V

    return-void
.end method
