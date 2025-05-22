.class public final Lcom/lzy/okrx2/observable/BodyObservable;
.super Lio/reactivex/Observable;
.source "BodyObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okrx2/observable/BodyObservable$BodyObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final upstream:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/lzy/okrx2/observable/BodyObservable;->upstream:Lio/reactivex/Observable;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/lzy/okrx2/observable/BodyObservable;->upstream:Lio/reactivex/Observable;

    new-instance v1, Lcom/lzy/okrx2/observable/BodyObservable$BodyObserver;

    invoke-direct {v1, p1}, Lcom/lzy/okrx2/observable/BodyObservable$BodyObserver;-><init>(Lio/reactivex/Observer;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
