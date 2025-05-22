.class public Lcom/powervision/base/base/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/powervision/base/base/BaseView;",
        "M::",
        "Lcom/powervision/base/base/BaseModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mMvpModel:Lcom/powervision/base/base/BaseModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field protected mMvpView:Lcom/powervision/base/base/BaseView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private mProvider:Lcom/trello/rxlifecycle4/LifecycleProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/trello/rxlifecycle4/LifecycleProvider<",
            "Lcom/trello/rxlifecycle4/android/ActivityEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected mRxManager:Lcom/powervision/base/rxmanager/RxManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/powervision/base/rxmanager/RxManager;

    invoke-direct {v0}, Lcom/powervision/base/rxmanager/RxManager;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/base/BasePresenter;->mRxManager:Lcom/powervision/base/rxmanager/RxManager;

    return-void
.end method


# virtual methods
.method public attachView(Lcom/powervision/base/base/BaseView;Lcom/powervision/base/base/BaseModel;Lcom/trello/rxlifecycle4/LifecycleProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TM;",
            "Lcom/trello/rxlifecycle4/LifecycleProvider<",
            "Lcom/trello/rxlifecycle4/android/ActivityEvent;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/powervision/base/base/BasePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    .line 41
    iput-object p2, p0, Lcom/powervision/base/base/BasePresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    .line 42
    iput-object p3, p0, Lcom/powervision/base/base/BasePresenter;->mProvider:Lcom/trello/rxlifecycle4/LifecycleProvider;

    .line 43
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public detachView()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/powervision/base/base/BasePresenter;->mRxManager:Lcom/powervision/base/rxmanager/RxManager;

    invoke-virtual {v0}, Lcom/powervision/base/rxmanager/RxManager;->unSubscribe()V

    .line 51
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/powervision/base/base/BasePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    .line 53
    iput-object v0, p0, Lcom/powervision/base/base/BasePresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-void
.end method

.method public getProvider()Lcom/trello/rxlifecycle4/LifecycleProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/trello/rxlifecycle4/LifecycleProvider<",
            "Lcom/trello/rxlifecycle4/android/ActivityEvent;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/powervision/base/base/BasePresenter;->mProvider:Lcom/trello/rxlifecycle4/LifecycleProvider;

    return-object v0
.end method

.method public isViewAttached()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/powervision/base/base/BasePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
