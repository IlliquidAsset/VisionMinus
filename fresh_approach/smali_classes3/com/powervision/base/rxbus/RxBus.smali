.class public final Lcom/powervision/base/rxbus/RxBus;
.super Ljava/lang/Object;
.source "RxBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/rxbus/RxBus$Message;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/powervision/base/rxbus/RxBus;


# instance fields
.field private final mBus:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mEventTypesBySubscriber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSubscriberMethodByEventType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lcom/powervision/base/rxbus/SubscriberMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSubscriptionsByEventType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lio/reactivex/disposables/Disposable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/rxbus/RxBus;->mSubscriptionsByEventType:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/rxbus/RxBus;->mEventTypesBySubscriber:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/rxbus/RxBus;->mSubscriberMethodByEventType:Ljava/util/Map;

    .line 43
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->toSerialized()Lio/reactivex/subjects/Subject;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/rxbus/RxBus;->mBus:Lio/reactivex/subjects/Subject;

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/base/rxbus/RxBus;Lcom/powervision/base/rxbus/SubscriberMethod;Ljava/lang/Object;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/powervision/base/rxbus/RxBus;->callEvent(Lcom/powervision/base/rxbus/SubscriberMethod;Ljava/lang/Object;)V

    return-void
.end method

.method private addEventTypeToMap(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/powervision/base/rxbus/RxBus;->mEventTypesBySubscriber:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v1, p0, Lcom/powervision/base/rxbus/RxBus;->mEventTypesBySubscriber:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 159
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private addSubscriber(Lcom/powervision/base/rxbus/SubscriberMethod;)V
    .locals 2

    .line 187
    invoke-virtual {p1}, Lcom/powervision/base/rxbus/SubscriberMethod;->getCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 188
    invoke-virtual {p1}, Lcom/powervision/base/rxbus/SubscriberMethod;->getEventType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/base/rxbus/RxBus;->toObservable(Ljava/lang/Class;)Lio/reactivex/Flowable;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/powervision/base/rxbus/SubscriberMethod;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/powervision/base/rxbus/SubscriberMethod;->getEventType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/powervision/base/rxbus/RxBus;->toObservable(ILjava/lang/Class;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 192
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/powervision/base/rxbus/RxBus;->postToObservable(Lio/reactivex/Flowable;Lcom/powervision/base/rxbus/SubscriberMethod;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/powervision/base/rxbus/RxBus$4;

    invoke-direct {v1, p0, p1}, Lcom/powervision/base/rxbus/RxBus$4;-><init>(Lcom/powervision/base/rxbus/RxBus;Lcom/powervision/base/rxbus/SubscriberMethod;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 198
    invoke-virtual {p1}, Lcom/powervision/base/rxbus/SubscriberMethod;->getSubscriber()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/powervision/base/rxbus/RxBus;->addSubscriptionToMap(Ljava/lang/Class;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private addSubscriberToMap(Ljava/lang/Class;Lcom/powervision/base/rxbus/SubscriberMethod;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/powervision/base/rxbus/RxBus;->mSubscriberMethodByEventType:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    iget-object v1, p0, Lcom/powervision/base/rxbus/RxBus;->mSubscriberMethodByEventType:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 176
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private addSubscriptionToMap(Ljava/lang/Class;Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/reactivex/disposables/Disposable;",
            ")V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/powervision/base/rxbus/RxBus;->mSubscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    iget-object v1, p0, Lcom/powervision/base/rxbus/RxBus;->mSubscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 214
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private callEvent(Lcom/powervision/base/rxbus/SubscriberMethod;Ljava/lang/Object;)V
    .locals 4

    .line 250
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/powervision/base/rxbus/RxBus;->mSubscriberMethodByEventType:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 252
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/rxbus/SubscriberMethod;

    .line 254
    invoke-virtual {v1}, Lcom/powervision/base/rxbus/SubscriberMethod;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    const-class v3, Lcom/powervision/base/rxbus/Subscribe;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/rxbus/Subscribe;

    .line 255
    invoke-interface {v2}, Lcom/powervision/base/rxbus/Subscribe;->code()I

    move-result v2

    .line 256
    invoke-virtual {p1}, Lcom/powervision/base/rxbus/SubscriberMethod;->getCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/powervision/base/rxbus/SubscriberMethod;->getSubscriber()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lcom/powervision/base/rxbus/SubscriberMethod;->getSubscriber()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/powervision/base/rxbus/SubscriberMethod;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 257
    invoke-virtual {v1}, Lcom/powervision/base/rxbus/SubscriberMethod;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {v1, p2}, Lcom/powervision/base/rxbus/SubscriberMethod;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static get()Lcom/powervision/base/rxbus/RxBus;
    .locals 2

    .line 52
    sget-object v0, Lcom/powervision/base/rxbus/RxBus;->sInstance:Lcom/powervision/base/rxbus/RxBus;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/powervision/base/rxbus/RxBus;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/powervision/base/rxbus/RxBus;->sInstance:Lcom/powervision/base/rxbus/RxBus;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/powervision/base/rxbus/RxBus;

    invoke-direct {v1}, Lcom/powervision/base/rxbus/RxBus;-><init>()V

    sput-object v1, Lcom/powervision/base/rxbus/RxBus;->sInstance:Lcom/powervision/base/rxbus/RxBus;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/base/rxbus/RxBus;->sInstance:Lcom/powervision/base/rxbus/RxBus;

    return-object v0
.end method

.method private postToObservable(Lio/reactivex/Flowable;Lcom/powervision/base/rxbus/SubscriberMethod;)Lio/reactivex/Flowable;
    .locals 2

    .line 227
    sget-object v0, Lcom/powervision/base/rxbus/RxBus$5;->$SwitchMap$com$powervision$base$rxbus$ThreadMode:[I

    invoke-virtual {p2}, Lcom/powervision/base/rxbus/SubscriberMethod;->getThreadMode()Lcom/powervision/base/rxbus/ThreadMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/rxbus/ThreadMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 235
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->trampoline()Lio/reactivex/Scheduler;

    move-result-object p2

    goto :goto_0

    .line 238
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown thread mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/powervision/base/rxbus/SubscriberMethod;->getThreadMode()Lcom/powervision/base/rxbus/ThreadMode;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 232
    :cond_1
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object p2

    goto :goto_0

    .line 229
    :cond_2
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    .line 240
    :goto_0
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method private toObservable(ILjava/lang/Class;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/powervision/base/rxbus/RxBus;->mBus:Lio/reactivex/subjects/Subject;

    sget-object v1, Lio/reactivex/BackpressureStrategy;->BUFFER:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    const-class v1, Lcom/powervision/base/rxbus/RxBus$Message;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->ofType(Ljava/lang/Class;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/powervision/base/rxbus/RxBus$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/base/rxbus/RxBus$3;-><init>(Lcom/powervision/base/rxbus/RxBus;ILjava/lang/Class;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lcom/powervision/base/rxbus/RxBus$2;

    invoke-direct {v0, p0}, Lcom/powervision/base/rxbus/RxBus$2;-><init>(Lcom/powervision/base/rxbus/RxBus;)V

    .line 87
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lcom/powervision/base/rxbus/RxBus$1;

    invoke-direct {v0, p0}, Lcom/powervision/base/rxbus/RxBus$1;-><init>(Lcom/powervision/base/rxbus/RxBus;)V

    .line 92
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 99
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->cast(Ljava/lang/Class;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method private toObservable(Ljava/lang/Class;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/powervision/base/rxbus/RxBus;->mBus:Lio/reactivex/subjects/Subject;

    sget-object v1, Lio/reactivex/BackpressureStrategy;->BUFFER:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/Flowable;->ofType(Ljava/lang/Class;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method private unSubscribeByEventType(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/powervision/base/rxbus/RxBus;->mSubscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 288
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 289
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 291
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 293
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private unSubscribeMethodByEventType(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/powervision/base/rxbus/RxBus;->mSubscriberMethodByEventType:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_1

    .line 308
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 309
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/rxbus/SubscriberMethod;

    .line 311
    invoke-virtual {v0}, Lcom/powervision/base/rxbus/SubscriberMethod;->getSubscriber()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public post(I)V
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/powervision/base/rxbus/RxBus;->mBus:Lio/reactivex/subjects/Subject;

    new-instance v1, Lcom/powervision/base/rxbus/RxBus$Message;

    new-instance v2, Lcom/powervision/base/rxbus/BusData;

    invoke-direct {v2}, Lcom/powervision/base/rxbus/BusData;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/powervision/base/rxbus/RxBus$Message;-><init>(Lcom/powervision/base/rxbus/RxBus;ILjava/lang/Object;Lcom/powervision/base/rxbus/RxBus$1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/powervision/base/rxbus/RxBus;->mBus:Lio/reactivex/subjects/Subject;

    new-instance v1, Lcom/powervision/base/rxbus/RxBus$Message;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/powervision/base/rxbus/RxBus$Message;-><init>(Lcom/powervision/base/rxbus/RxBus;ILjava/lang/Object;Lcom/powervision/base/rxbus/RxBus$1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public post(Ljava/lang/Object;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/powervision/base/rxbus/RxBus;->mBus:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .locals 12

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 110
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v6, v0, v3

    .line 111
    const-class v4, Lcom/powervision/base/rxbus/Subscribe;

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 115
    array-length v5, v4

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    .line 117
    aget-object v10, v4, v2

    .line 119
    invoke-direct {p0, p1, v10}, Lcom/powervision/base/rxbus/RxBus;->addEventTypeToMap(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 120
    const-class v4, Lcom/powervision/base/rxbus/Subscribe;

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/rxbus/Subscribe;

    .line 121
    invoke-interface {v4}, Lcom/powervision/base/rxbus/Subscribe;->code()I

    move-result v8

    .line 122
    invoke-interface {v4}, Lcom/powervision/base/rxbus/Subscribe;->threadMode()Lcom/powervision/base/rxbus/ThreadMode;

    move-result-object v9

    .line 124
    new-instance v11, Lcom/powervision/base/rxbus/SubscriberMethod;

    move-object v4, v11

    move-object v5, p1

    move-object v7, v10

    invoke-direct/range {v4 .. v9}, Lcom/powervision/base/rxbus/SubscriberMethod;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Class;ILcom/powervision/base/rxbus/ThreadMode;)V

    .line 125
    invoke-direct {p0, v10, v11}, Lcom/powervision/base/rxbus/RxBus;->addSubscriberToMap(Ljava/lang/Class;Lcom/powervision/base/rxbus/SubscriberMethod;)V

    .line 127
    invoke-direct {p0, v11}, Lcom/powervision/base/rxbus/RxBus;->addSubscriber(Lcom/powervision/base/rxbus/SubscriberMethod;)V

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    .line 128
    array-length v4, v4

    if-nez v4, :cond_2

    .line 130
    :cond_1
    const-class v10, Lcom/powervision/base/rxbus/BusData;

    .line 132
    invoke-direct {p0, p1, v10}, Lcom/powervision/base/rxbus/RxBus;->addEventTypeToMap(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 133
    const-class v4, Lcom/powervision/base/rxbus/Subscribe;

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/rxbus/Subscribe;

    .line 134
    invoke-interface {v4}, Lcom/powervision/base/rxbus/Subscribe;->code()I

    move-result v8

    .line 135
    invoke-interface {v4}, Lcom/powervision/base/rxbus/Subscribe;->threadMode()Lcom/powervision/base/rxbus/ThreadMode;

    move-result-object v9

    .line 137
    new-instance v11, Lcom/powervision/base/rxbus/SubscriberMethod;

    move-object v4, v11

    move-object v5, p1

    move-object v7, v10

    invoke-direct/range {v4 .. v9}, Lcom/powervision/base/rxbus/SubscriberMethod;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Class;ILcom/powervision/base/rxbus/ThreadMode;)V

    .line 138
    invoke-direct {p0, v10, v11}, Lcom/powervision/base/rxbus/RxBus;->addSubscriberToMap(Ljava/lang/Class;Lcom/powervision/base/rxbus/SubscriberMethod;)V

    .line 140
    invoke-direct {p0, v11}, Lcom/powervision/base/rxbus/RxBus;->addSubscriber(Lcom/powervision/base/rxbus/SubscriberMethod;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public unRegister(Ljava/lang/Object;)V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/powervision/base/rxbus/RxBus;->mEventTypesBySubscriber:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 272
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 273
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/powervision/base/rxbus/RxBus;->unSubscribeByEventType(Ljava/lang/Class;)V

    .line 274
    invoke-direct {p0, p1, v1}, Lcom/powervision/base/rxbus/RxBus;->unSubscribeMethodByEventType(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/rxbus/RxBus;->mEventTypesBySubscriber:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
