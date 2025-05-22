.class public final Lcom/trello/lifecycle4/android/lifecycle/AndroidLifecycle;
.super Ljava/lang/Object;
.source "AndroidLifecycle.java"

# interfaces
.implements Lcom/trello/rxlifecycle4/LifecycleProvider;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/trello/rxlifecycle4/LifecycleProvider<",
        "Landroidx/lifecycle/Lifecycle$Event;",
        ">;",
        "Landroidx/lifecycle/LifecycleObserver;"
    }
.end annotation


# instance fields
.field private final lifecycleSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/BehaviorSubject<",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->create()Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/trello/lifecycle4/android/lifecycle/AndroidLifecycle;->lifecycleSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    .line 37
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public static createLifecycleProvider(Landroidx/lifecycle/LifecycleOwner;)Lcom/trello/rxlifecycle4/LifecycleProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            ")",
            "Lcom/trello/rxlifecycle4/LifecycleProvider<",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/trello/lifecycle4/android/lifecycle/AndroidLifecycle;

    invoke-direct {v0, p0}, Lcom/trello/lifecycle4/android/lifecycle/AndroidLifecycle;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    return-object v0
.end method


# virtual methods
.method public bindToLifecycle()Lcom/trello/rxlifecycle4/LifecycleTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/trello/rxlifecycle4/LifecycleTransformer<",
            "TT;>;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/trello/lifecycle4/android/lifecycle/AndroidLifecycle;->lifecycleSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-static {v0}, Lcom/trello/lifecycle4/android/lifecycle/RxLifecycleAndroidLifecycle;->bindLifecycle(Lio/reactivex/rxjava3/core/Observable;)Lcom/trello/rxlifecycle4/LifecycleTransformer;

    move-result-object v0

    return-object v0
.end method

.method public bindUntilEvent(Landroidx/lifecycle/Lifecycle$Event;)Lcom/trello/rxlifecycle4/LifecycleTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ")",
            "Lcom/trello/rxlifecycle4/LifecycleTransformer<",
            "TT;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/trello/lifecycle4/android/lifecycle/AndroidLifecycle;->lifecycleSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-static {v0, p1}, Lcom/trello/rxlifecycle4/RxLifecycle;->bindUntilEvent(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lcom/trello/rxlifecycle4/LifecycleTransformer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic bindUntilEvent(Ljava/lang/Object;)Lcom/trello/rxlifecycle4/LifecycleTransformer;
    .locals 0

    .line 28
    check-cast p1, Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, p1}, Lcom/trello/lifecycle4/android/lifecycle/AndroidLifecycle;->bindUntilEvent(Landroidx/lifecycle/Lifecycle$Event;)Lcom/trello/rxlifecycle4/LifecycleTransformer;

    move-result-object p1

    return-object p1
.end method

.method public lifecycle()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/trello/lifecycle4/android/lifecycle/AndroidLifecycle;->lifecycleSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->hide()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    return-object v0
.end method

.method onEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/trello/lifecycle4/android/lifecycle/AndroidLifecycle;->lifecycleSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-virtual {v0, p2}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 64
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_0

    .line 65
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method
