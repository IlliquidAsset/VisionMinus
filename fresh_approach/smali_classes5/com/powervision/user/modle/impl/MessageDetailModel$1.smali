.class Lcom/powervision/user/modle/impl/MessageDetailModel$1;
.super Ljava/lang/Object;
.source "MessageDetailModel.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/modle/impl/MessageDetailModel;->getMessageData(Ljava/lang/String;Ljava/lang/String;Lcom/powervision/user/modle/IMessageDetailModel$LoadComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/powervision/base/net/retrofit/message/response/DetailResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/user/modle/impl/MessageDetailModel;

.field final synthetic val$listener:Lcom/powervision/user/modle/IMessageDetailModel$LoadComplete;


# direct methods
.method constructor <init>(Lcom/powervision/user/modle/impl/MessageDetailModel;Lcom/powervision/user/modle/IMessageDetailModel$LoadComplete;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/powervision/user/modle/impl/MessageDetailModel$1;->this$0:Lcom/powervision/user/modle/impl/MessageDetailModel;

    iput-object p2, p0, Lcom/powervision/user/modle/impl/MessageDetailModel$1;->val$listener:Lcom/powervision/user/modle/IMessageDetailModel$LoadComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/powervision/user/modle/impl/MessageDetailModel$1;->val$listener:Lcom/powervision/user/modle/IMessageDetailModel$LoadComplete;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/powervision/user/modle/IMessageDetailModel$LoadComplete;->loadError(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Lcom/powervision/base/net/retrofit/message/response/DetailResponse;)V
    .locals 2

    if-nez p1, :cond_0

    .line 34
    iget-object p1, p0, Lcom/powervision/user/modle/impl/MessageDetailModel$1;->val$listener:Lcom/powervision/user/modle/IMessageDetailModel$LoadComplete;

    const-string v0, "\u6570\u636e\u7a7a"

    invoke-interface {p1, v0}, Lcom/powervision/user/modle/IMessageDetailModel$LoadComplete;->loadError(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p1, Lcom/powervision/base/net/retrofit/message/response/DetailResponse;->code:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/powervision/user/modle/impl/MessageDetailModel$1;->val$listener:Lcom/powervision/user/modle/IMessageDetailModel$LoadComplete;

    iget-object p1, p1, Lcom/powervision/base/net/retrofit/message/response/DetailResponse;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Lcom/powervision/user/modle/IMessageDetailModel$LoadComplete;->loadComplete(Ljava/util/List;)V

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/powervision/user/modle/impl/MessageDetailModel$1;->val$listener:Lcom/powervision/user/modle/IMessageDetailModel$LoadComplete;

    iget-object p1, p1, Lcom/powervision/base/net/retrofit/message/response/DetailResponse;->message:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/powervision/user/modle/IMessageDetailModel$LoadComplete;->loadError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/powervision/base/net/retrofit/message/response/DetailResponse;

    invoke-virtual {p0, p1}, Lcom/powervision/user/modle/impl/MessageDetailModel$1;->onNext(Lcom/powervision/base/net/retrofit/message/response/DetailResponse;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
