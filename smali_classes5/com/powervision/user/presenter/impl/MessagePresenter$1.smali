.class Lcom/powervision/user/presenter/impl/MessagePresenter$1;
.super Ljava/lang/Object;
.source "MessagePresenter.java"

# interfaces
.implements Lcom/powervision/user/modle/IMessageModel$LoadComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/presenter/impl/MessagePresenter;->fetch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/user/presenter/impl/MessagePresenter;


# direct methods
.method constructor <init>(Lcom/powervision/user/presenter/impl/MessagePresenter;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/MessagePresenter$1;->this$0:Lcom/powervision/user/presenter/impl/MessagePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadComplete(Lcom/powervision/base/net/retrofit/message/response/MessageResponse;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/MessagePresenter$1;->this$0:Lcom/powervision/user/presenter/impl/MessagePresenter;

    invoke-static {v0}, Lcom/powervision/user/presenter/impl/MessagePresenter;->access$000(Lcom/powervision/user/presenter/impl/MessagePresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/ui/view/IMessageView;

    iget-object v1, p1, Lcom/powervision/base/net/retrofit/message/response/MessageResponse;->data:Lcom/powervision/base/net/retrofit/message/response/MessageResponse$DataRes;

    iget-object v1, v1, Lcom/powervision/base/net/retrofit/message/response/MessageResponse$DataRes;->message_list:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/powervision/user/ui/view/IMessageView;->showMessage(Ljava/util/List;)V

    .line 17
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/MessagePresenter$1;->this$0:Lcom/powervision/user/presenter/impl/MessagePresenter;

    invoke-static {v0}, Lcom/powervision/user/presenter/impl/MessagePresenter;->access$100(Lcom/powervision/user/presenter/impl/MessagePresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/ui/view/IMessageView;

    iget-object p1, p1, Lcom/powervision/base/net/retrofit/message/response/MessageResponse;->data:Lcom/powervision/base/net/retrofit/message/response/MessageResponse$DataRes;

    iget p1, p1, Lcom/powervision/base/net/retrofit/message/response/MessageResponse$DataRes;->total_unread_count:I

    invoke-interface {v0, p1}, Lcom/powervision/user/ui/view/IMessageView;->updateUnReadCount(I)V

    .line 18
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/MessagePresenter$1;->this$0:Lcom/powervision/user/presenter/impl/MessagePresenter;

    invoke-static {p1}, Lcom/powervision/user/presenter/impl/MessagePresenter;->access$200(Lcom/powervision/user/presenter/impl/MessagePresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/user/ui/view/IMessageView;

    invoke-interface {p1}, Lcom/powervision/user/ui/view/IMessageView;->dismissLoading()V

    return-void
.end method

.method public loadError(Ljava/lang/String;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/MessagePresenter$1;->this$0:Lcom/powervision/user/presenter/impl/MessagePresenter;

    invoke-static {v0}, Lcom/powervision/user/presenter/impl/MessagePresenter;->access$300(Lcom/powervision/user/presenter/impl/MessagePresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/ui/view/IMessageView;

    invoke-interface {v0, p1}, Lcom/powervision/user/ui/view/IMessageView;->showLoadError(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/MessagePresenter$1;->this$0:Lcom/powervision/user/presenter/impl/MessagePresenter;

    invoke-static {p1}, Lcom/powervision/user/presenter/impl/MessagePresenter;->access$400(Lcom/powervision/user/presenter/impl/MessagePresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/user/ui/view/IMessageView;

    invoke-interface {p1}, Lcom/powervision/user/ui/view/IMessageView;->dismissLoading()V

    return-void
.end method

.method public timeout()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/MessagePresenter$1;->this$0:Lcom/powervision/user/presenter/impl/MessagePresenter;

    invoke-static {v0}, Lcom/powervision/user/presenter/impl/MessagePresenter;->access$500(Lcom/powervision/user/presenter/impl/MessagePresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/ui/view/IMessageView;

    invoke-interface {v0}, Lcom/powervision/user/ui/view/IMessageView;->dismissLoading()V

    return-void
.end method
