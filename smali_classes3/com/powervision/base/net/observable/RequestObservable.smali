.class public abstract Lcom/powervision/base/net/observable/RequestObservable;
.super Lio/reactivex/observers/DefaultObserver;
.source "RequestObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/DefaultObserver<",
        "Lcom/powervision/base/base/entity/BaseResultEntity<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestObservable"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lio/reactivex/observers/DefaultObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 36
    :try_start_0
    invoke-static {p1}, Lcom/powervision/base/net/exception/FactoryException;->analysisException(Ljava/lang/Throwable;)Lcom/powervision/base/net/exception/ApiException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/base/net/observable/RequestObservable;->onFailure(Lcom/powervision/base/net/exception/ApiException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public abstract onFailure(Lcom/powervision/base/net/exception/ApiException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public onNext(Lcom/powervision/base/base/entity/BaseResultEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/base/base/entity/BaseResultEntity<",
            "TT;>;)V"
        }
    .end annotation

    .line 23
    :try_start_0
    invoke-virtual {p1}, Lcom/powervision/base/base/entity/BaseResultEntity;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p1}, Lcom/powervision/base/base/entity/BaseResultEntity;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/base/net/observable/RequestObservable;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Lcom/powervision/base/net/exception/ApiException;

    invoke-virtual {p1}, Lcom/powervision/base/base/entity/BaseResultEntity;->getCode()I

    move-result p1

    invoke-static {p1}, Lcom/powervision/base/net/exception/HttpTimeException;->getApiExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/powervision/base/net/exception/ApiException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/powervision/base/net/observable/RequestObservable;->onFailure(Lcom/powervision/base/net/exception/ApiException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/powervision/base/base/entity/BaseResultEntity;

    invoke-virtual {p0, p1}, Lcom/powervision/base/net/observable/RequestObservable;->onNext(Lcom/powervision/base/base/entity/BaseResultEntity;)V

    return-void
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
