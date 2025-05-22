.class Lcom/powervision/user/modle/impl/MessageModel$2;
.super Ljava/lang/Object;
.source "MessageModel.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/modle/impl/MessageModel;->updateMsgStatus(Ljava/lang/String;Ljava/lang/String;Lcom/powervision/user/modle/IMessageModel$UpdateMessageStatus;)V
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

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$updateMessageStatus:Lcom/powervision/user/modle/IMessageModel$UpdateMessageStatus;


# direct methods
.method constructor <init>(Lcom/powervision/user/modle/impl/MessageModel;Lcom/powervision/user/modle/IMessageModel$UpdateMessageStatus;Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/powervision/user/modle/impl/MessageModel$2;->this$0:Lcom/powervision/user/modle/impl/MessageModel;

    iput-object p2, p0, Lcom/powervision/user/modle/impl/MessageModel$2;->val$updateMessageStatus:Lcom/powervision/user/modle/IMessageModel$UpdateMessageStatus;

    iput-object p3, p0, Lcom/powervision/user/modle/impl/MessageModel$2;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/powervision/user/modle/impl/MessageModel$2;->val$updateMessageStatus:Lcom/powervision/user/modle/IMessageModel$UpdateMessageStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/powervision/user/modle/IMessageModel$UpdateMessageStatus;->fail(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Lcom/powervision/base/net/retrofit/message/response/MessageResponse;)V
    .locals 3

    .line 86
    iget-object v0, p1, Lcom/powervision/base/net/retrofit/message/response/MessageResponse;->code:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/powervision/user/modle/impl/MessageModel$2;->val$updateMessageStatus:Lcom/powervision/user/modle/IMessageModel$UpdateMessageStatus;

    invoke-interface {v0}, Lcom/powervision/user/modle/IMessageModel$UpdateMessageStatus;->updateSuccess()V

    .line 88
    iget-object v0, p0, Lcom/powervision/user/modle/impl/MessageModel$2;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "message_count"

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object p1

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    iget-object p1, p1, Lcom/powervision/base/net/retrofit/message/response/MessageResponse;->data:Lcom/powervision/base/net/retrofit/message/response/MessageResponse$DataRes;

    iget p1, p1, Lcom/powervision/base/net/retrofit/message/response/MessageResponse$DataRes;->total_unread_count:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/powervision/user/modle/impl/MessageModel$2;->val$updateMessageStatus:Lcom/powervision/user/modle/IMessageModel$UpdateMessageStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/powervision/base/net/retrofit/message/response/MessageResponse;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/powervision/base/net/retrofit/message/response/MessageResponse;->message:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/powervision/user/modle/IMessageModel$UpdateMessageStatus;->fail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, Lcom/powervision/base/net/retrofit/message/response/MessageResponse;

    invoke-virtual {p0, p1}, Lcom/powervision/user/modle/impl/MessageModel$2;->onNext(Lcom/powervision/base/net/retrofit/message/response/MessageResponse;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
