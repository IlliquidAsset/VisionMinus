.class public Lcom/powervision/base/rxmanager/RxManager;
.super Ljava/lang/Object;
.source "RxManager.java"


# instance fields
.field private mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public register(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/powervision/base/rxmanager/RxManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/rxmanager/RxManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/rxmanager/RxManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public unSubscribe()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/powervision/base/rxmanager/RxManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    :cond_0
    return-void
.end method
