.class public final Lcom/trello/rxlifecycle4/LifecycleTransformer;
.super Ljava/lang/Object;
.source "LifecycleTransformer.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/ObservableTransformer;
.implements Lio/reactivex/rxjava3/core/FlowableTransformer;
.implements Lio/reactivex/rxjava3/core/SingleTransformer;
.implements Lio/reactivex/rxjava3/core/MaybeTransformer;
.implements Lio/reactivex/rxjava3/core/CompletableTransformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/ObservableTransformer<",
        "TT;TT;>;",
        "Lio/reactivex/rxjava3/core/FlowableTransformer<",
        "TT;TT;>;",
        "Lio/reactivex/rxjava3/core/SingleTransformer<",
        "TT;TT;>;",
        "Lio/reactivex/rxjava3/core/MaybeTransformer<",
        "TT;TT;>;",
        "Lio/reactivex/rxjava3/core/CompletableTransformer;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field final observable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "observable == null"

    .line 52
    invoke-static {p1, v0}, Lcom/trello/rxlifecycle4/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Lcom/trello/rxlifecycle4/LifecycleTransformer;->observable:Lio/reactivex/rxjava3/core/Observable;

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/rxjava3/core/Completable;)Lio/reactivex/rxjava3/core/CompletableSource;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/CompletableSource;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 78
    iget-object p1, p0, Lcom/trello/rxlifecycle4/LifecycleTransformer;->observable:Lio/reactivex/rxjava3/core/Observable;

    sget-object v1, Lcom/trello/rxlifecycle4/Functions;->CANCEL_COMPLETABLE:Lio/reactivex/rxjava3/functions/Function;

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMapCompletable(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Completable;->ambArray([Lio/reactivex/rxjava3/core/CompletableSource;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lio/reactivex/rxjava3/core/Maybe;)Lio/reactivex/rxjava3/core/MaybeSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Maybe<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/MaybeSource<",
            "TT;>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/trello/rxlifecycle4/LifecycleTransformer;->observable:Lio/reactivex/rxjava3/core/Observable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->firstElement()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Maybe;->takeUntil(Lio/reactivex/rxjava3/core/MaybeSource;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "TT;>;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/trello/rxlifecycle4/LifecycleTransformer;->observable:Lio/reactivex/rxjava3/core/Observable;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->takeUntil(Lio/reactivex/rxjava3/core/ObservableSource;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/SingleSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Single<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/SingleSource<",
            "TT;>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/trello/rxlifecycle4/LifecycleTransformer;->observable:Lio/reactivex/rxjava3/core/Observable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->firstOrError()Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->takeUntil(Lio/reactivex/rxjava3/core/SingleSource;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lio/reactivex/rxjava3/core/Flowable;)Lorg/reactivestreams/Publisher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Flowable<",
            "TT;>;)",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/trello/rxlifecycle4/LifecycleTransformer;->observable:Lio/reactivex/rxjava3/core/Observable;

    sget-object v1, Lio/reactivex/rxjava3/core/BackpressureStrategy;->LATEST:Lio/reactivex/rxjava3/core/BackpressureStrategy;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->toFlowable(Lio/reactivex/rxjava3/core/BackpressureStrategy;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->takeUntil(Lorg/reactivestreams/Publisher;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    check-cast p1, Lcom/trello/rxlifecycle4/LifecycleTransformer;

    .line 88
    iget-object v0, p0, Lcom/trello/rxlifecycle4/LifecycleTransformer;->observable:Lio/reactivex/rxjava3/core/Observable;

    iget-object p1, p1, Lcom/trello/rxlifecycle4/LifecycleTransformer;->observable:Lio/reactivex/rxjava3/core/Observable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/trello/rxlifecycle4/LifecycleTransformer;->observable:Lio/reactivex/rxjava3/core/Observable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LifecycleTransformer{observable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trello/rxlifecycle4/LifecycleTransformer;->observable:Lio/reactivex/rxjava3/core/Observable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
