.class Lcom/powervision/user/presenter/impl/MessageDetailPresenter$1;
.super Ljava/lang/Object;
.source "MessageDetailPresenter.java"

# interfaces
.implements Lcom/powervision/user/modle/IMessageDetailModel$LoadComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/presenter/impl/MessageDetailPresenter;->fetch(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/user/presenter/impl/MessageDetailPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/user/presenter/impl/MessageDetailPresenter;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/MessageDetailPresenter$1;->this$0:Lcom/powervision/user/presenter/impl/MessageDetailPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadComplete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/MessageDetailPresenter$1;->this$0:Lcom/powervision/user/presenter/impl/MessageDetailPresenter;

    invoke-static {v0}, Lcom/powervision/user/presenter/impl/MessageDetailPresenter;->access$000(Lcom/powervision/user/presenter/impl/MessageDetailPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/ui/view/IMessageDetailView;

    invoke-interface {v0, p1}, Lcom/powervision/user/ui/view/IMessageDetailView;->showMessage(Ljava/util/List;)V

    .line 19
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/MessageDetailPresenter$1;->this$0:Lcom/powervision/user/presenter/impl/MessageDetailPresenter;

    invoke-static {p1}, Lcom/powervision/user/presenter/impl/MessageDetailPresenter;->access$100(Lcom/powervision/user/presenter/impl/MessageDetailPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/user/ui/view/IMessageDetailView;

    invoke-interface {p1}, Lcom/powervision/user/ui/view/IMessageDetailView;->dismissLoading()V

    return-void
.end method

.method public loadError(Ljava/lang/String;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/MessageDetailPresenter$1;->this$0:Lcom/powervision/user/presenter/impl/MessageDetailPresenter;

    invoke-static {v0}, Lcom/powervision/user/presenter/impl/MessageDetailPresenter;->access$200(Lcom/powervision/user/presenter/impl/MessageDetailPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/ui/view/IMessageDetailView;

    invoke-interface {v0, p1}, Lcom/powervision/user/ui/view/IMessageDetailView;->showLoadError(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/MessageDetailPresenter$1;->this$0:Lcom/powervision/user/presenter/impl/MessageDetailPresenter;

    invoke-static {p1}, Lcom/powervision/user/presenter/impl/MessageDetailPresenter;->access$300(Lcom/powervision/user/presenter/impl/MessageDetailPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/user/ui/view/IMessageDetailView;

    invoke-interface {p1}, Lcom/powervision/user/ui/view/IMessageDetailView;->dismissLoading()V

    return-void
.end method

.method public timeout()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/MessageDetailPresenter$1;->this$0:Lcom/powervision/user/presenter/impl/MessageDetailPresenter;

    invoke-static {v0}, Lcom/powervision/user/presenter/impl/MessageDetailPresenter;->access$400(Lcom/powervision/user/presenter/impl/MessageDetailPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/ui/view/IMessageDetailView;

    invoke-interface {v0}, Lcom/powervision/user/ui/view/IMessageDetailView;->dismissLoading()V

    return-void
.end method
