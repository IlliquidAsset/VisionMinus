.class public Lcom/trello/rxlifecycle4/RxLifecycle;
.super Ljava/lang/Object;
.source "RxLifecycle.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static bind(Lio/reactivex/rxjava3/core/Observable;)Lcom/trello/rxlifecycle4/LifecycleTransformer;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/Observable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TR;>;)",
            "Lcom/trello/rxlifecycle4/LifecycleTransformer<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 73
    new-instance v0, Lcom/trello/rxlifecycle4/LifecycleTransformer;

    invoke-direct {v0, p0}, Lcom/trello/rxlifecycle4/LifecycleTransformer;-><init>(Lio/reactivex/rxjava3/core/Observable;)V

    return-object v0
.end method

.method public static bind(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Function;)Lcom/trello/rxlifecycle4/LifecycleTransformer;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/Observable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/functions/Function;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TR;>;",
            "Lio/reactivex/rxjava3/functions/Function<",
            "TR;TR;>;)",
            "Lcom/trello/rxlifecycle4/LifecycleTransformer<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const-string v0, "lifecycle == null"

    .line 94
    invoke-static {p0, v0}, Lcom/trello/rxlifecycle4/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "correspondingEvents == null"

    .line 95
    invoke-static {p1, v0}, Lcom/trello/rxlifecycle4/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->share()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/trello/rxlifecycle4/RxLifecycle;->takeUntilCorrespondingEvent(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lcom/trello/rxlifecycle4/RxLifecycle;->bind(Lio/reactivex/rxjava3/core/Observable;)Lcom/trello/rxlifecycle4/LifecycleTransformer;

    move-result-object p0

    return-object p0
.end method

.method public static bindUntilEvent(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lcom/trello/rxlifecycle4/LifecycleTransformer;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/Observable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TR;>;TR;)",
            "Lcom/trello/rxlifecycle4/LifecycleTransformer<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const-string v0, "lifecycle == null"

    .line 46
    invoke-static {p0, v0}, Lcom/trello/rxlifecycle4/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "event == null"

    .line 47
    invoke-static {p1, v0}, Lcom/trello/rxlifecycle4/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    invoke-static {p0, p1}, Lcom/trello/rxlifecycle4/RxLifecycle;->takeUntilEvent(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lcom/trello/rxlifecycle4/RxLifecycle;->bind(Lio/reactivex/rxjava3/core/Observable;)Lcom/trello/rxlifecycle4/LifecycleTransformer;

    move-result-object p0

    return-object p0
.end method

.method private static takeUntilCorrespondingEvent(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TR;>;",
            "Lio/reactivex/rxjava3/functions/Function<",
            "TR;TR;>;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 102
    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->take(J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 103
    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->skip(J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/trello/rxlifecycle4/RxLifecycle$2;

    invoke-direct {v0}, Lcom/trello/rxlifecycle4/RxLifecycle$2;-><init>()V

    .line 101
    invoke-static {p1, p0, v0}, Lio/reactivex/rxjava3/core/Observable;->combineLatest(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/trello/rxlifecycle4/Functions;->RESUME_FUNCTION:Lio/reactivex/rxjava3/functions/Function;

    .line 110
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/trello/rxlifecycle4/Functions;->SHOULD_COMPLETE:Lio/reactivex/rxjava3/functions/Predicate;

    .line 111
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static takeUntilEvent(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TR;>;TR;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TR;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/trello/rxlifecycle4/RxLifecycle$1;

    invoke-direct {v0, p1}, Lcom/trello/rxlifecycle4/RxLifecycle$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
