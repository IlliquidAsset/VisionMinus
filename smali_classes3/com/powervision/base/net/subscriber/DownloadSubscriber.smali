.class public Lcom/powervision/base/net/subscriber/DownloadSubscriber;
.super Lio/reactivex/subscribers/DefaultSubscriber;
.source "DownloadSubscriber.java"

# interfaces
.implements Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subscribers/DefaultSubscriber<",
        "TT;>;",
        "Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lio/reactivex/subscribers/DefaultSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onFailure(I)V
    .locals 0

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public update(JJZ)V
    .locals 0

    return-void
.end method
