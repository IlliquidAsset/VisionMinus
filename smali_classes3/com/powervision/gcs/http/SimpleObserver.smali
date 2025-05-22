.class public abstract Lcom/powervision/gcs/http/SimpleObserver;
.super Ljava/lang/Object;
.source "SimpleObserver.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/powervision/gcs/http/BaseResult<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleObserver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterSucced()V
    .locals 0

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 32
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_Msg_108:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/StringUtil;->getStringById(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNext(Lcom/powervision/gcs/http/BaseResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/gcs/http/BaseResult<",
            "TT;>;)V"
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Lcom/powervision/gcs/http/BaseResult;->isResultSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object p1, p1, Lcom/powervision/gcs/http/BaseResult;->data:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/http/SimpleObserver;->onSucceed(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0}, Lcom/powervision/gcs/http/SimpleObserver;->afterSucced()V

    goto :goto_0

    .line 26
    :cond_0
    iget v0, p1, Lcom/powervision/gcs/http/BaseResult;->code:I

    iget-object p1, p1, Lcom/powervision/gcs/http/BaseResult;->msg:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/powervision/gcs/http/SimpleObserver;->onFailed(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/powervision/gcs/http/BaseResult;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/http/SimpleObserver;->onNext(Lcom/powervision/gcs/http/BaseResult;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method

.method protected abstract onSucceed(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
