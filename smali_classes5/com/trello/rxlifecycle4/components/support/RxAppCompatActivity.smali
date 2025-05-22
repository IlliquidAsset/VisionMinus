.class public abstract Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RxAppCompatActivity.java"

# interfaces
.implements Lcom/trello/rxlifecycle4/LifecycleProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/trello/rxlifecycle4/LifecycleProvider<",
        "Lcom/trello/rxlifecycle4/android/ActivityEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final lifecycleSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/BehaviorSubject<",
            "Lcom/trello/rxlifecycle4/android/ActivityEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 38
    invoke-static {}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->create()Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;->lifecycleSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;-><init>(I)V

    .line 38
    invoke-static {}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->create()Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;->lifecycleSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    return-void
.end method


# virtual methods
.method public final bindToLifecycle()Lcom/trello/rxlifecycle4/LifecycleTransformer;
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

    .line 67
    iget-object v0, p0, Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;->lifecycleSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-static {v0}, Lcom/trello/rxlifecycle4/android/RxLifecycleAndroid;->bindActivity(Lio/reactivex/rxjava3/core/Observable;)Lcom/trello/rxlifecycle4/LifecycleTransformer;

    move-result-object v0

    return-object v0
.end method

.method public final bindUntilEvent(Lcom/trello/rxlifecycle4/android/ActivityEvent;)Lcom/trello/rxlifecycle4/LifecycleTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/trello/rxlifecycle4/android/ActivityEvent;",
            ")",
            "Lcom/trello/rxlifecycle4/LifecycleTransformer<",
            "TT;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;->lifecycleSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-static {v0, p1}, Lcom/trello/rxlifecycle4/RxLifecycle;->bindUntilEvent(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lcom/trello/rxlifecycle4/LifecycleTransformer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic bindUntilEvent(Ljava/lang/Object;)Lcom/trello/rxlifecycle4/LifecycleTransformer;
    .locals 0

    .line 36
    check-cast p1, Lcom/trello/rxlifecycle4/android/ActivityEvent;

    invoke-virtual {p0, p1}, Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;->bindUntilEvent(Lcom/trello/rxlifecycle4/android/ActivityEvent;)Lcom/trello/rxlifecycle4/LifecycleTransformer;

    move-result-object p1

    return-object p1
.end method

.method public final lifecycle()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/trello/rxlifecycle4/android/ActivityEvent;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;->lifecycleSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->hide()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    iget-object p1, p0, Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;->lifecycleSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    sget-object v0, Lcom/trello/rxlifecycle4/android/ActivityEvent;->CREATE:Lcom/trello/rxlifecycle4/android/ActivityEvent;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;->lifecycleSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle4/android/ActivityEvent;->DESTROY:Lcom/trello/rxlifecycle4/android/ActivityEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 109
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;->lifecycleSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle4/android/ActivityEvent;->PAUSE:Lcom/trello/rxlifecycle4/android/ActivityEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 95
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 87
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 88
    iget-object v0, p0, Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;->lifecycleSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle4/android/ActivityEvent;->RESUME:Lcom/trello/rxlifecycle4/android/ActivityEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 80
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 81
    iget-object v0, p0, Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;->lifecycleSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle4/android/ActivityEvent;->START:Lcom/trello/rxlifecycle4/android/ActivityEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;->lifecycleSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle4/android/ActivityEvent;->STOP:Lcom/trello/rxlifecycle4/android/ActivityEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 102
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
