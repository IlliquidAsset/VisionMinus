.class public Lcom/powervision/user/presenter/impl/MessageDetailPresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "MessageDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/user/ui/view/IMessageDetailView;",
        "Lcom/powervision/user/modle/impl/MessageDetailModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageDetailPresenter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/user/presenter/impl/MessageDetailPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/MessageDetailPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/user/presenter/impl/MessageDetailPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/MessageDetailPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/user/presenter/impl/MessageDetailPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/MessageDetailPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/user/presenter/impl/MessageDetailPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/MessageDetailPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/user/presenter/impl/MessageDetailPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/MessageDetailPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method


# virtual methods
.method public fetch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/MessageDetailPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/user/ui/view/IMessageDetailView;

    invoke-interface {v0}, Lcom/powervision/user/ui/view/IMessageDetailView;->showLoading()V

    .line 15
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/MessageDetailPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/user/modle/impl/MessageDetailModel;

    new-instance v1, Lcom/powervision/user/presenter/impl/MessageDetailPresenter$1;

    invoke-direct {v1, p0}, Lcom/powervision/user/presenter/impl/MessageDetailPresenter$1;-><init>(Lcom/powervision/user/presenter/impl/MessageDetailPresenter;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/powervision/user/modle/impl/MessageDetailModel;->getMessageData(Ljava/lang/String;Ljava/lang/String;Lcom/powervision/user/modle/IMessageDetailModel$LoadComplete;)V

    return-void
.end method
