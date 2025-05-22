.class public final Lcom/trello/lifecycle4/android/lifecycle/RxLifecycleAndroidLifecycle;
.super Ljava/lang/Object;
.source "RxLifecycleAndroidLifecycle.java"


# static fields
.field private static final LIFECYCLE:Lio/reactivex/rxjava3/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/functions/Function<",
            "Landroidx/lifecycle/Lifecycle$Event;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/trello/lifecycle4/android/lifecycle/RxLifecycleAndroidLifecycle$1;

    invoke-direct {v0}, Lcom/trello/lifecycle4/android/lifecycle/RxLifecycleAndroidLifecycle$1;-><init>()V

    sput-object v0, Lcom/trello/lifecycle4/android/lifecycle/RxLifecycleAndroidLifecycle;->LIFECYCLE:Lio/reactivex/rxjava3/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static bindLifecycle(Lio/reactivex/rxjava3/core/Observable;)Lcom/trello/rxlifecycle4/LifecycleTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ">;)",
            "Lcom/trello/rxlifecycle4/LifecycleTransformer<",
            "TT;>;"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/trello/lifecycle4/android/lifecycle/RxLifecycleAndroidLifecycle;->LIFECYCLE:Lio/reactivex/rxjava3/functions/Function;

    invoke-static {p0, v0}, Lcom/trello/rxlifecycle4/RxLifecycle;->bind(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Function;)Lcom/trello/rxlifecycle4/LifecycleTransformer;

    move-result-object p0

    return-object p0
.end method
