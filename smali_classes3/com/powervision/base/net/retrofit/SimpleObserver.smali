.class public abstract Lcom/powervision/base/net/retrofit/SimpleObserver;
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
        "Lcom/powervision/base/net/retrofit/BaseResult<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleObserver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
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

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " okhttp onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimpleObserver"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance p1, Lcom/powervision/base/net/exception/ApiException;

    const/16 v0, 0x100

    invoke-static {v0}, Lcom/powervision/base/net/exception/HttpTimeException;->getApiExceptionMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/powervision/base/net/exception/ApiException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/powervision/base/net/retrofit/SimpleObserver;->onFailed(Lcom/powervision/base/net/exception/ApiException;)V

    return-void
.end method

.method public onFailed(Lcom/powervision/base/net/exception/ApiException;)V
    .locals 0

    return-void
.end method

.method public onNext(Lcom/powervision/base/net/retrofit/BaseResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/base/net/retrofit/BaseResult<",
            "TT;>;)V"
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Lcom/powervision/base/net/retrofit/BaseResult;->isResultSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object p1, p1, Lcom/powervision/base/net/retrofit/BaseResult;->data:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/powervision/base/net/retrofit/SimpleObserver;->onSucceed(Ljava/lang/Object;)V

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lcom/powervision/base/net/exception/ApiException;

    iget v1, p1, Lcom/powervision/base/net/retrofit/BaseResult;->code:I

    iget p1, p1, Lcom/powervision/base/net/retrofit/BaseResult;->code:I

    invoke-static {p1}, Lcom/powervision/base/net/exception/HttpTimeException;->getApiExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/powervision/base/net/exception/ApiException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/powervision/base/net/retrofit/SimpleObserver;->onFailed(Lcom/powervision/base/net/exception/ApiException;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/powervision/base/net/retrofit/BaseResult;

    invoke-virtual {p0, p1}, Lcom/powervision/base/net/retrofit/SimpleObserver;->onNext(Lcom/powervision/base/net/retrofit/BaseResult;)V

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
