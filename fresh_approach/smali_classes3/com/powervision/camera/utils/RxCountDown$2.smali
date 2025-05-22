.class Lcom/powervision/camera/utils/RxCountDown$2;
.super Ljava/lang/Object;
.source "RxCountDown.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/camera/utils/RxCountDown;->addWatcher(Lcom/powervision/camera/utils/RxCountDown$Watcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/camera/utils/RxCountDown;

.field final synthetic val$watcher:Lcom/powervision/camera/utils/RxCountDown$Watcher;


# direct methods
.method constructor <init>(Lcom/powervision/camera/utils/RxCountDown;Lcom/powervision/camera/utils/RxCountDown$Watcher;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/powervision/camera/utils/RxCountDown$2;->this$0:Lcom/powervision/camera/utils/RxCountDown;

    iput-object p2, p0, Lcom/powervision/camera/utils/RxCountDown$2;->val$watcher:Lcom/powervision/camera/utils/RxCountDown$Watcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/powervision/camera/utils/RxCountDown$2;->val$watcher:Lcom/powervision/camera/utils/RxCountDown$Watcher;

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0}, Lcom/powervision/camera/utils/RxCountDown$Watcher;->complete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .locals 0

    .line 187
    iget-object p1, p0, Lcom/powervision/camera/utils/RxCountDown$2;->val$watcher:Lcom/powervision/camera/utils/RxCountDown$Watcher;

    if-eqz p1, :cond_0

    .line 188
    invoke-interface {p1}, Lcom/powervision/camera/utils/RxCountDown$Watcher;->next()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 177
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/powervision/camera/utils/RxCountDown$2;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/powervision/camera/utils/RxCountDown$2;->val$watcher:Lcom/powervision/camera/utils/RxCountDown$Watcher;

    if-eqz p1, :cond_0

    .line 181
    invoke-interface {p1}, Lcom/powervision/camera/utils/RxCountDown$Watcher;->start()V

    :cond_0
    return-void
.end method
