.class public abstract Lcom/powervision/base/net/observable/StringRequestObservable;
.super Lio/reactivex/observers/DefaultObserver;
.source "StringRequestObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DefaultObserver<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lio/reactivex/observers/DefaultObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onComplete=success"

    .line 42
    invoke-static {v1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 34
    :try_start_0
    invoke-static {p1}, Lcom/powervision/base/net/exception/FactoryException;->analysisException(Ljava/lang/Throwable;)Lcom/powervision/base/net/exception/ApiException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/base/net/observable/StringRequestObservable;->onFailure(Lcom/powervision/base/net/exception/ApiException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 36
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

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/powervision/base/net/observable/StringRequestObservable;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .locals 2

    .line 21
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    new-instance p1, Lcom/powervision/base/net/exception/ApiException;

    new-instance v0, Lcom/powervision/base/net/exception/HttpTimeException;

    const/16 v1, 0x103

    invoke-direct {v0, v1}, Lcom/powervision/base/net/exception/HttpTimeException;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/powervision/base/net/exception/ApiException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/powervision/base/net/observable/StringRequestObservable;->onFailure(Lcom/powervision/base/net/exception/ApiException;)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/powervision/base/net/observable/StringRequestObservable;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
