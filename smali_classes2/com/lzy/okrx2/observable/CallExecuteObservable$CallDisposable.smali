.class final Lcom/lzy/okrx2/observable/CallExecuteObservable$CallDisposable;
.super Ljava/lang/Object;
.source "CallExecuteObservable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okrx2/observable/CallExecuteObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallDisposable"
.end annotation


# instance fields
.field private final call:Lcom/lzy/okgo/adapter/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/adapter/Call<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lzy/okgo/adapter/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/adapter/Call<",
            "*>;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/lzy/okrx2/observable/CallExecuteObservable$CallDisposable;->call:Lcom/lzy/okgo/adapter/Call;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/lzy/okrx2/observable/CallExecuteObservable$CallDisposable;->call:Lcom/lzy/okgo/adapter/Call;

    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->cancel()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/lzy/okrx2/observable/CallExecuteObservable$CallDisposable;->call:Lcom/lzy/okgo/adapter/Call;

    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->isCanceled()Z

    move-result v0

    return v0
.end method
