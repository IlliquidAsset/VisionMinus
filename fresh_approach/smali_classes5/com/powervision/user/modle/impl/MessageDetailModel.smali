.class public Lcom/powervision/user/modle/impl/MessageDetailModel;
.super Ljava/lang/Object;
.source "MessageDetailModel.java"

# interfaces
.implements Lcom/powervision/base/base/BaseModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTestData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    new-instance v1, Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;

    invoke-direct {v1}, Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;-><init>()V

    .line 61
    new-instance v2, Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;

    invoke-direct {v2}, Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;-><init>()V

    .line 62
    new-instance v3, Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;

    invoke-direct {v3}, Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;-><init>()V

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public getMessageData(Ljava/lang/String;Ljava/lang/String;Lcom/powervision/user/modle/IMessageDetailModel$LoadComplete;)V
    .locals 1

    .line 20
    invoke-static {}, Lcom/powervision/base/net/retrofit/message/MessageManager;->getInstance()Lcom/powervision/base/net/retrofit/message/MessageManager;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/powervision/base/net/retrofit/message/MessageManager;->getMessageApi()Lcom/powervision/base/net/retrofit/message/MessageApi;

    move-result-object v0

    .line 22
    invoke-interface {v0, p1, p2}, Lcom/powervision/base/net/retrofit/message/MessageApi;->getMessageByType(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 23
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 24
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/powervision/user/modle/impl/MessageDetailModel$1;

    invoke-direct {p2, p0, p3}, Lcom/powervision/user/modle/impl/MessageDetailModel$1;-><init>(Lcom/powervision/user/modle/impl/MessageDetailModel;Lcom/powervision/user/modle/IMessageDetailModel$LoadComplete;)V

    .line 25
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
