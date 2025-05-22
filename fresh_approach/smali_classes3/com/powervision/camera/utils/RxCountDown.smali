.class public Lcom/powervision/camera/utils/RxCountDown;
.super Ljava/lang/Object;
.source "RxCountDown.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/camera/utils/RxCountDown$Watcher;
    }
.end annotation


# static fields
.field private static rxCountDown:Lcom/powervision/camera/utils/RxCountDown;


# instance fields
.field private count:I

.field private disposable:Lio/reactivex/disposables/Disposable;

.field private gestureDis:Lio/reactivex/disposables/Disposable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/powervision/camera/utils/RxCountDown;->count:I

    return-void
.end method

.method public static getInstance()Lcom/powervision/camera/utils/RxCountDown;
    .locals 2

    .line 29
    sget-object v0, Lcom/powervision/camera/utils/RxCountDown;->rxCountDown:Lcom/powervision/camera/utils/RxCountDown;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/powervision/camera/utils/RxCountDown;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/powervision/camera/utils/RxCountDown;->rxCountDown:Lcom/powervision/camera/utils/RxCountDown;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/powervision/camera/utils/RxCountDown;

    invoke-direct {v1}, Lcom/powervision/camera/utils/RxCountDown;-><init>()V

    sput-object v1, Lcom/powervision/camera/utils/RxCountDown;->rxCountDown:Lcom/powervision/camera/utils/RxCountDown;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/camera/utils/RxCountDown;->rxCountDown:Lcom/powervision/camera/utils/RxCountDown;

    return-object v0
.end method

.method static synthetic lambda$countCaptureDown$4(ILjava/lang/Long;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$countdown$0(ILjava/lang/Long;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$countdown$2(ILjava/lang/Long;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addWatcher(Lcom/powervision/camera/utils/RxCountDown$Watcher;)V
    .locals 9

    .line 174
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x5dc

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    invoke-static/range {v0 .. v8}, Lio/reactivex/Observable;->intervalRange(JJJJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 175
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 176
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/camera/utils/RxCountDown$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/camera/utils/RxCountDown$2;-><init>(Lcom/powervision/camera/utils/RxCountDown;Lcom/powervision/camera/utils/RxCountDown$Watcher;)V

    .line 177
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public cancelCaptureDown()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/powervision/camera/utils/RxCountDown;->gestureDis:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/powervision/camera/utils/RxCountDown;->gestureDis:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public cancelCount()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/powervision/camera/utils/RxCountDown;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/powervision/camera/utils/RxCountDown;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 109
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v2

    const/16 v3, 0xb3

    invoke-virtual {v2, v3, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 113
    iput v1, p0, Lcom/powervision/camera/utils/RxCountDown;->count:I

    return-void
.end method

.method public cancelDelayCount()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/powervision/camera/utils/RxCountDown;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/powervision/camera/utils/RxCountDown;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public countCaptureDown(I)V
    .locals 6

    .line 141
    iget-object v0, p0, Lcom/powervision/camera/utils/RxCountDown;->gestureDis:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/powervision/camera/utils/RxCountDown;->gestureDis:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 145
    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    .line 147
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v4, v5}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    .line 148
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 149
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$UraUHn9sKXJFfcp7owS0i2fL-D0;

    invoke-direct {v2, p1}, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$UraUHn9sKXJFfcp7owS0i2fL-D0;-><init>(I)V

    .line 150
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    int-to-long v2, p1

    .line 151
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/powervision/camera/utils/RxCountDown$1;

    invoke-direct {v1, p0, v0}, Lcom/powervision/camera/utils/RxCountDown$1;-><init>(Lcom/powervision/camera/utils/RxCountDown;Landroid/util/SparseArray;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/camera/utils/RxCountDown;->gestureDis:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public countdown(I)V
    .locals 6

    const-string v0, "integer = countdown"

    .line 55
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/powervision/camera/utils/RxCountDown;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/powervision/camera/utils/RxCountDown;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 60
    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    .line 62
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v4, v5}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    .line 63
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 64
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$qWWrb6LlilGEVfubraTZsDVJgnM;

    invoke-direct {v2, p1}, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$qWWrb6LlilGEVfubraTZsDVJgnM;-><init>(I)V

    .line 65
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    int-to-long v2, p1

    .line 66
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$P32rI8ysou90NVfbEQolPv-_QjE;

    invoke-direct {v1, p0, v0}, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$P32rI8ysou90NVfbEQolPv-_QjE;-><init>(Lcom/powervision/camera/utils/RxCountDown;Landroid/util/SparseArray;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/camera/utils/RxCountDown;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public countdown(II)V
    .locals 6

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 84
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    .line 86
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v4, v5}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    .line 87
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 88
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$mvmC78h4ZQi4yHyxbwN_ZDLdc2c;

    invoke-direct {v2, p1}, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$mvmC78h4ZQi4yHyxbwN_ZDLdc2c;-><init>(I)V

    .line 89
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    int-to-long v2, p1

    .line 90
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$Ap3KOGuO0OHb8jgBwAf4RNMf6YU;

    invoke-direct {v1, p0, v0, p2}, Lcom/powervision/camera/utils/-$$Lambda$RxCountDown$Ap3KOGuO0OHb8jgBwAf4RNMf6YU;-><init>(Lcom/powervision/camera/utils/RxCountDown;Landroid/util/SparseArray;I)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/camera/utils/RxCountDown;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/powervision/camera/utils/RxCountDown;->count:I

    return v0
.end method

.method public isCounting()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/powervision/camera/utils/RxCountDown;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$countdown$1$RxCountDown(Landroid/util/SparseArray;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "integer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/powervision/camera/utils/RxCountDown;->setCount(I)V

    const/4 v0, 0x0

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 69
    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x1

    .line 70
    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x2

    .line 71
    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p2

    const/16 v0, 0xb3

    invoke-virtual {p2, v0, p1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$countdown$3$RxCountDown(Landroid/util/SparseArray;ILjava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "integer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/powervision/camera/utils/RxCountDown;->setCount(I)V

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p2

    const/16 p3, 0xb3

    invoke-virtual {p2, p3, p1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/powervision/camera/utils/RxCountDown;->count:I

    return-void
.end method
