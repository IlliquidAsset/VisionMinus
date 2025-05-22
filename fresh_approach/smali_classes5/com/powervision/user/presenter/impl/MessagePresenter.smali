.class public Lcom/powervision/user/presenter/impl/MessagePresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "MessagePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/user/ui/view/IMessageView;",
        "Lcom/powervision/user/modle/impl/MessageModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/user/presenter/impl/MessagePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/MessagePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/user/presenter/impl/MessagePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/MessagePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/user/presenter/impl/MessagePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/MessagePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/user/presenter/impl/MessagePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/MessagePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/user/presenter/impl/MessagePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/MessagePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/user/presenter/impl/MessagePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/MessagePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/user/presenter/impl/MessagePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/MessagePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method


# virtual methods
.method public fetch(Ljava/lang/String;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/MessagePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/user/ui/view/IMessageView;

    invoke-interface {v0}, Lcom/powervision/user/ui/view/IMessageView;->showLoading()V

    .line 13
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/MessagePresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/user/modle/impl/MessageModel;

    new-instance v1, Lcom/powervision/user/presenter/impl/MessagePresenter$1;

    invoke-direct {v1, p0}, Lcom/powervision/user/presenter/impl/MessagePresenter$1;-><init>(Lcom/powervision/user/presenter/impl/MessagePresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/powervision/user/modle/impl/MessageModel;->getMessageData(Ljava/lang/String;Lcom/powervision/user/modle/IMessageModel$LoadComplete;)V

    return-void
.end method

.method public updateMsgStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/MessagePresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/user/modle/impl/MessageModel;

    new-instance v1, Lcom/powervision/user/presenter/impl/MessagePresenter$2;

    invoke-direct {v1, p0, p2}, Lcom/powervision/user/presenter/impl/MessagePresenter$2;-><init>(Lcom/powervision/user/presenter/impl/MessagePresenter;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/powervision/user/modle/impl/MessageModel;->updateMsgStatus(Ljava/lang/String;Ljava/lang/String;Lcom/powervision/user/modle/IMessageModel$UpdateMessageStatus;)V

    return-void
.end method
