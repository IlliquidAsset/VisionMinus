.class public Lcom/powervision/user/modle/impl/MessageModel;
.super Ljava/lang/Object;
.source "MessageModel.java"

# interfaces
.implements Lcom/powervision/base/base/BaseModel;


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageModel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTestData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/base/net/retrofit/message/response/MessageBean;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    new-instance v1, Lcom/powervision/base/net/retrofit/message/response/MessageBean;

    invoke-direct {v1}, Lcom/powervision/base/net/retrofit/message/response/MessageBean;-><init>()V

    .line 117
    new-instance v2, Lcom/powervision/base/net/retrofit/message/response/MessageBean;

    invoke-direct {v2}, Lcom/powervision/base/net/retrofit/message/response/MessageBean;-><init>()V

    .line 118
    new-instance v3, Lcom/powervision/base/net/retrofit/message/response/MessageBean;

    invoke-direct {v3}, Lcom/powervision/base/net/retrofit/message/response/MessageBean;-><init>()V

    const-string v4, "0"

    .line 119
    iput-object v4, v1, Lcom/powervision/base/net/retrofit/message/response/MessageBean;->type:Ljava/lang/String;

    const-string v4, "2"

    .line 120
    iput-object v4, v2, Lcom/powervision/base/net/retrofit/message/response/MessageBean;->type:Ljava/lang/String;

    const-string v4, "1"

    .line 121
    iput-object v4, v1, Lcom/powervision/base/net/retrofit/message/response/MessageBean;->type:Ljava/lang/String;

    .line 122
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMessageData(Ljava/lang/String;Lcom/powervision/user/modle/IMessageModel$LoadComplete;)V
    .locals 1

    .line 26
    invoke-static {}, Lcom/powervision/base/net/retrofit/message/MessageManager;->getInstance()Lcom/powervision/base/net/retrofit/message/MessageManager;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/powervision/base/net/retrofit/message/MessageManager;->getMessageApi()Lcom/powervision/base/net/retrofit/message/MessageApi;

    move-result-object v0

    .line 28
    invoke-interface {v0, p1}, Lcom/powervision/base/net/retrofit/message/MessageApi;->getMessageList(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 29
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 30
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/powervision/user/modle/impl/MessageModel$1;

    invoke-direct {v0, p0, p2}, Lcom/powervision/user/modle/impl/MessageModel$1;-><init>(Lcom/powervision/user/modle/impl/MessageModel;Lcom/powervision/user/modle/IMessageModel$LoadComplete;)V

    .line 31
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public updateMsgStatus(Ljava/lang/String;Ljava/lang/String;Lcom/powervision/user/modle/IMessageModel$UpdateMessageStatus;)V
    .locals 1

    .line 73
    invoke-static {}, Lcom/powervision/base/net/retrofit/message/MessageManager;->getInstance()Lcom/powervision/base/net/retrofit/message/MessageManager;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/powervision/base/net/retrofit/message/MessageManager;->getMessageApi()Lcom/powervision/base/net/retrofit/message/MessageApi;

    move-result-object v0

    .line 75
    invoke-interface {v0, p1, p2}, Lcom/powervision/base/net/retrofit/message/MessageApi;->updateMessageStatus(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 76
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 77
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/powervision/user/modle/impl/MessageModel$2;

    invoke-direct {v0, p0, p3, p2}, Lcom/powervision/user/modle/impl/MessageModel$2;-><init>(Lcom/powervision/user/modle/impl/MessageModel;Lcom/powervision/user/modle/IMessageModel$UpdateMessageStatus;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
