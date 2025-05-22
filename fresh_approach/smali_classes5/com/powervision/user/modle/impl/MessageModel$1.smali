.class Lcom/powervision/user/modle/impl/MessageModel$1;
.super Ljava/lang/Object;
.source "MessageModel.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/modle/impl/MessageModel;->getMessageData(Ljava/lang/String;Lcom/powervision/user/modle/IMessageModel$LoadComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/powervision/base/net/retrofit/message/response/MessageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/user/modle/impl/MessageModel;

.field final synthetic val$listener:Lcom/powervision/user/modle/IMessageModel$LoadComplete;


# direct methods
.method constructor <init>(Lcom/powervision/user/modle/impl/MessageModel;Lcom/powervision/user/modle/IMessageModel$LoadComplete;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/powervision/user/modle/impl/MessageModel$1;->this$0:Lcom/powervision/user/modle/impl/MessageModel;

    iput-object p2, p0, Lcom/powervision/user/modle/impl/MessageModel$1;->val$listener:Lcom/powervision/user/modle/IMessageModel$LoadComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/powervision/user/modle/impl/MessageModel$1;->val$listener:Lcom/powervision/user/modle/IMessageModel$LoadComplete;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/powervision/user/modle/IMessageModel$LoadComplete;->loadError(Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MessageModel"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNext(Lcom/powervision/base/net/retrofit/message/response/MessageResponse;)V
    .locals 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/powervision/base/net/retrofit/message/response/MessageResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessageModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/powervision/user/modle/impl/MessageModel$1;->val$listener:Lcom/powervision/user/modle/IMessageModel$LoadComplete;

    const-string v0, "\u6570\u636e\u7a7a"

    invoke-interface {p1, v0}, Lcom/powervision/user/modle/IMessageModel$LoadComplete;->loadError(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p1, Lcom/powervision/base/net/retrofit/message/response/MessageResponse;->code:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/powervision/user/modle/impl/MessageModel$1;->val$listener:Lcom/powervision/user/modle/IMessageModel$LoadComplete;

    invoke-interface {v0, p1}, Lcom/powervision/user/modle/IMessageModel$LoadComplete;->loadComplete(Lcom/powervision/base/net/retrofit/message/response/MessageResponse;)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/powervision/user/modle/impl/MessageModel$1;->val$listener:Lcom/powervision/user/modle/IMessageModel$LoadComplete;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error Code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/powervision/base/net/retrofit/message/response/MessageResponse;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/powervision/base/net/retrofit/message/response/MessageResponse;->message:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/powervision/user/modle/IMessageModel$LoadComplete;->loadError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/powervision/base/net/retrofit/message/response/MessageResponse;

    invoke-virtual {p0, p1}, Lcom/powervision/user/modle/impl/MessageModel$1;->onNext(Lcom/powervision/base/net/retrofit/message/response/MessageResponse;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    const-string p1, "MessageModel"

    const-string v0, "onSubscribe: "

    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
