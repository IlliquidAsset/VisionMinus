.class final Lcom/trello/rxlifecycle4/android/ViewDetachesOnSubscribe;
.super Ljava/lang/Object;
.source "ViewDetachesOnSubscribe.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trello/rxlifecycle4/android/ViewDetachesOnSubscribe$EmitterListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/ObservableOnSubscribe<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final SIGNAL:Ljava/lang/Object;


# instance fields
.field final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/trello/rxlifecycle4/android/ViewDetachesOnSubscribe;->SIGNAL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/trello/rxlifecycle4/android/ViewDetachesOnSubscribe;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/ObservableEmitter<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    invoke-static {}, Lio/reactivex/rxjava3/android/MainThreadDisposable;->verifyMainThread()V

    .line 38
    new-instance v0, Lcom/trello/rxlifecycle4/android/ViewDetachesOnSubscribe$EmitterListener;

    invoke-direct {v0, p0, p1}, Lcom/trello/rxlifecycle4/android/ViewDetachesOnSubscribe$EmitterListener;-><init>(Lcom/trello/rxlifecycle4/android/ViewDetachesOnSubscribe;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    .line 39
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/ObservableEmitter;->setDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 40
    iget-object p1, p0, Lcom/trello/rxlifecycle4/android/ViewDetachesOnSubscribe;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
