.class public Lorg/xutils/http/HttpTask;
.super Lorg/xutils/common/task/AbsTask;
.source "HttpTask.java"

# interfaces
.implements Lorg/xutils/http/ProgressHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/http/HttpTask$RequestWorker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/xutils/common/task/AbsTask<",
        "TResultType;>;",
        "Lorg/xutils/http/ProgressHandler;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CACHE_EXECUTOR:Lorg/xutils/common/task/PriorityExecutor;

.field private static final DOWNLOAD_TASK:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/xutils/http/HttpTask<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static final FLAG_CACHE:I = 0x2

.field private static final FLAG_PROGRESS:I = 0x3

.field private static final FLAG_REQUEST_CREATED:I = 0x1

.field private static final HTTP_EXECUTOR:Lorg/xutils/common/task/PriorityExecutor;

.field private static final sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private cacheCallback:Lorg/xutils/common/Callback$CacheCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$CacheCallback<",
            "TResultType;>;"
        }
    .end annotation
.end field

.field private final cacheLock:Ljava/lang/Object;

.field private final callback:Lorg/xutils/common/Callback$CommonCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$CommonCallback<",
            "TResultType;>;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private volatile hasException:Z

.field private lastUpdateTime:J

.field private loadType:Ljava/lang/reflect/Type;

.field private loadingUpdateMaxTimeSpan:J

.field private params:Lorg/xutils/http/RequestParams;

.field private prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

.field private progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

.field private rawResult:Ljava/lang/Object;

.field private request:Lorg/xutils/http/request/UriRequest;

.field private requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

.field private tracker:Lorg/xutils/http/app/RequestTracker;

.field private volatile trustCache:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/xutils/http/HttpTask;->DOWNLOAD_TASK:Ljava/util/HashMap;

    .line 66
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor;

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    sput-object v0, Lorg/xutils/http/HttpTask;->HTTP_EXECUTOR:Lorg/xutils/common/task/PriorityExecutor;

    .line 67
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor;

    invoke-direct {v0, v2, v1}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    sput-object v0, Lorg/xutils/http/HttpTask;->CACHE_EXECUTOR:Lorg/xutils/common/task/PriorityExecutor;

    return-void
.end method

.method public constructor <init>(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$Cancelable;Lorg/xutils/common/Callback$CommonCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/http/RequestParams;",
            "Lorg/xutils/common/Callback$Cancelable;",
            "Lorg/xutils/common/Callback$CommonCallback<",
            "TResultType;>;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p2}, Lorg/xutils/common/task/AbsTask;-><init>(Lorg/xutils/common/Callback$Cancelable;)V

    const/4 p2, 0x0

    .line 42
    iput-boolean p2, p0, Lorg/xutils/http/HttpTask;->hasException:Z

    const/4 p2, 0x0

    .line 46
    iput-object p2, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;

    .line 47
    iput-object p2, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;

    .line 48
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    const-wide/16 v0, 0x12c

    .line 522
    iput-wide v0, p0, Lorg/xutils/http/HttpTask;->loadingUpdateMaxTimeSpan:J

    .line 78
    iput-object p1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    .line 79
    iput-object p3, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    .line 80
    instance-of p2, p3, Lorg/xutils/common/Callback$CacheCallback;

    if-eqz p2, :cond_0

    .line 81
    move-object p2, p3

    check-cast p2, Lorg/xutils/common/Callback$CacheCallback;

    iput-object p2, p0, Lorg/xutils/http/HttpTask;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    .line 83
    :cond_0
    instance-of p2, p3, Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz p2, :cond_1

    .line 84
    move-object p2, p3

    check-cast p2, Lorg/xutils/common/Callback$PrepareCallback;

    iput-object p2, p0, Lorg/xutils/http/HttpTask;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    .line 86
    :cond_1
    instance-of p2, p3, Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz p2, :cond_2

    .line 87
    move-object p2, p3

    check-cast p2, Lorg/xutils/common/Callback$ProgressCallback;

    iput-object p2, p0, Lorg/xutils/http/HttpTask;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    .line 89
    :cond_2
    instance-of p2, p3, Lorg/xutils/http/app/RequestInterceptListener;

    if-eqz p2, :cond_3

    .line 90
    move-object p2, p3

    check-cast p2, Lorg/xutils/http/app/RequestInterceptListener;

    iput-object p2, p0, Lorg/xutils/http/HttpTask;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    .line 95
    :cond_3
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getRequestTracker()Lorg/xutils/http/app/RequestTracker;

    move-result-object p2

    if-nez p2, :cond_5

    .line 97
    instance-of p2, p3, Lorg/xutils/http/app/RequestTracker;

    if-eqz p2, :cond_4

    .line 98
    move-object p2, p3

    check-cast p2, Lorg/xutils/http/app/RequestTracker;

    goto :goto_0

    .line 100
    :cond_4
    invoke-static {}, Lorg/xutils/http/request/UriRequestFactory;->getDefaultTracker()Lorg/xutils/http/app/RequestTracker;

    move-result-object p2

    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    .line 104
    new-instance p3, Lorg/xutils/http/RequestTrackerWrapper;

    invoke-direct {p3, p2}, Lorg/xutils/http/RequestTrackerWrapper;-><init>(Lorg/xutils/http/app/RequestTracker;)V

    iput-object p3, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    .line 109
    :cond_6
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 110
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/http/HttpTask;->executor:Ljava/util/concurrent/Executor;

    goto :goto_1

    .line 112
    :cond_7
    iget-object p1, p0, Lorg/xutils/http/HttpTask;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    if-eqz p1, :cond_8

    .line 113
    sget-object p1, Lorg/xutils/http/HttpTask;->CACHE_EXECUTOR:Lorg/xutils/common/task/PriorityExecutor;

    iput-object p1, p0, Lorg/xutils/http/HttpTask;->executor:Ljava/util/concurrent/Executor;

    goto :goto_1

    .line 115
    :cond_8
    sget-object p1, Lorg/xutils/http/HttpTask;->HTTP_EXECUTOR:Lorg/xutils/common/task/PriorityExecutor;

    iput-object p1, p0, Lorg/xutils/http/HttpTask;->executor:Ljava/util/concurrent/Executor;

    :goto_1
    return-void
.end method

.method static synthetic access$100(Lorg/xutils/http/HttpTask;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->closeRequestSync()V

    return-void
.end method

.method static synthetic access$200(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 36
    sget-object v0, Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/app/RequestInterceptListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/xutils/http/HttpTask;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    return-object p0
.end method

.method static synthetic access$500(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    return-object p0
.end method

.method static synthetic access$502(Lorg/xutils/http/HttpTask;Lorg/xutils/http/request/UriRequest;)Lorg/xutils/http/request/UriRequest;
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    return-object p1
.end method

.method static synthetic access$600(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/RequestParams;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    return-object p0
.end method

.method static synthetic access$602(Lorg/xutils/http/HttpTask;Lorg/xutils/http/RequestParams;)Lorg/xutils/http/RequestParams;
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    return-object p1
.end method

.method static synthetic access$700(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->createNewRequest()Lorg/xutils/http/request/UriRequest;

    move-result-object p0

    return-object p0
.end method

.method private checkDownloadTask()V
    .locals 4

    .line 145
    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;

    if-ne v0, v1, :cond_6

    .line 146
    sget-object v0, Lorg/xutils/http/HttpTask;->DOWNLOAD_TASK:Ljava/util/HashMap;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getSaveFilePath()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 154
    sget-object v2, Lorg/xutils/http/HttpTask;->DOWNLOAD_TASK:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/http/HttpTask;

    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {v2}, Lorg/xutils/http/HttpTask;->cancel()V

    .line 159
    invoke-direct {v2}, Lorg/xutils/http/HttpTask;->closeRequestSync()V

    .line 161
    :cond_0
    sget-object v2, Lorg/xutils/http/HttpTask;->DOWNLOAD_TASK:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_1
    sget-object v2, Lorg/xutils/http/HttpTask;->DOWNLOAD_TASK:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_2
    sget-object v1, Lorg/xutils/http/HttpTask;->DOWNLOAD_TASK:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_5

    .line 168
    sget-object v1, Lorg/xutils/http/HttpTask;->DOWNLOAD_TASK:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 169
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 171
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_4

    .line 172
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 173
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 177
    :cond_5
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_6
    :goto_1
    return-void
.end method

.method private clearRawResult()V
    .locals 2

    .line 479
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;

    instance-of v1, v0, Ljava/io/Closeable;

    if-eqz v1, :cond_0

    .line 480
    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    const/4 v0, 0x0

    .line 482
    iput-object v0, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;

    return-void
.end method

.method private closeRequestSync()V
    .locals 2

    .line 501
    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;

    if-ne v0, v1, :cond_0

    .line 502
    sget-object v0, Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    .line 503
    :try_start_0
    sget-object v1, Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 504
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 506
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 507
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method private createNewRequest()Lorg/xutils/http/request/UriRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->init()V

    .line 136
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lorg/xutils/http/request/UriRequestFactory;->getUriRequest(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)Lorg/xutils/http/request/UriRequest;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p0}, Lorg/xutils/http/request/UriRequest;->setProgressHandler(Lorg/xutils/http/ProgressHandler;)V

    .line 138
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getLoadingUpdateMaxTimeSpan()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lorg/xutils/http/HttpTask;->loadingUpdateMaxTimeSpan:J

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 139
    invoke-virtual {p0, v1, v2}, Lorg/xutils/http/HttpTask;->update(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method private resolveLoadType()V
    .locals 3

    .line 122
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    instance-of v2, v1, Lorg/xutils/common/Callback$TypedCallback;

    if-eqz v2, :cond_0

    .line 124
    check-cast v1, Lorg/xutils/common/Callback$TypedCallback;

    invoke-interface {v1}, Lorg/xutils/common/Callback$TypedCallback;->getLoadType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 125
    :cond_0
    instance-of v1, v1, Lorg/xutils/common/Callback$PrepareCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 126
    const-class v1, Lorg/xutils/common/Callback$PrepareCallback;

    invoke-static {v0, v1, v2}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 128
    :cond_1
    const-class v1, Lorg/xutils/common/Callback$CommonCallback;

    invoke-static {v0, v1, v2}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;

    :goto_0
    return-void
.end method


# virtual methods
.method protected cancelWorks()V
    .locals 2

    .line 487
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/http/HttpTask$2;

    invoke-direct {v1, p0}, Lorg/xutils/http/HttpTask$2;-><init>(Lorg/xutils/http/HttpTask;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected doBackground()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 191
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->resolveLoadType()V

    .line 192
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->createNewRequest()Lorg/xutils/http/request/UriRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    .line 193
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->checkDownloadTask()V

    .line 198
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getHttpRetryHandler()Lorg/xutils/http/app/HttpRetryHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lorg/xutils/http/app/HttpRetryHandler;

    invoke-direct {v0}, Lorg/xutils/http/app/HttpRetryHandler;-><init>()V

    .line 202
    :cond_0
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getMaxRetryCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xutils/http/app/HttpRetryHandler;->setMaxRetryCount(I)V

    .line 204
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_16

    .line 210
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/http/HttpMethod;->permitsCache(Lorg/xutils/http/HttpMethod;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 213
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load cache: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v5}, Lorg/xutils/http/request/UriRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v1}, Lorg/xutils/http/request/UriRequest;->loadResultFromCache()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v5, "load disk cache error"

    .line 217
    invoke-static {v5, v1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    :goto_0
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 225
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 226
    iget-object v5, p0, Lorg/xutils/http/HttpTask;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v5, :cond_1

    .line 228
    :try_start_1
    invoke-interface {v5, v1}, Lorg/xutils/common/Callback$PrepareCallback;->prepare(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_2
    const-string v5, "prepare disk cache error"

    .line 231
    invoke-static {v5, v1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 233
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    move-object v1, v4

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 234
    throw v0

    .line 239
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v1, :cond_6

    const/4 v5, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v2

    .line 245
    invoke-virtual {p0, v5, v6}, Lorg/xutils/http/HttpTask;->update(I[Ljava/lang/Object;)V

    .line 246
    iget-object v5, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 247
    :catchall_3
    :goto_2
    :try_start_3
    iget-object v6, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-nez v6, :cond_2

    .line 249
    :try_start_4
    iget-object v6, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 251
    :catch_0
    :try_start_5
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled before request"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_2
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 258
    iget-object v5, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    return-object v4

    :catchall_4
    move-exception v0

    .line 255
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    .line 240
    :cond_3
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled before request"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_4
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 222
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled before request"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v1, v4

    .line 265
    :cond_6
    iget-object v5, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;

    if-nez v5, :cond_7

    .line 266
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;

    :cond_7
    if-nez v1, :cond_8

    .line 270
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v1}, Lorg/xutils/http/request/UriRequest;->clearCacheHeader()V

    .line 274
    :cond_8
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    instance-of v5, v1, Lorg/xutils/common/Callback$ProxyCacheCallback;

    if-eqz v5, :cond_9

    .line 275
    check-cast v1, Lorg/xutils/common/Callback$ProxyCacheCallback;

    invoke-interface {v1}, Lorg/xutils/common/Callback$ProxyCacheCallback;->onlyCache()Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v4

    :cond_9
    move-object v5, v4

    move-object v6, v5

    const/4 v1, 0x1

    const/4 v7, 0x0

    :goto_3
    if-eqz v1, :cond_13

    .line 286
    :try_start_7
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_10

    .line 291
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v1}, Lorg/xutils/http/request/UriRequest;->close()V
    :try_end_7
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 294
    :try_start_8
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v8}, Lorg/xutils/http/request/UriRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 297
    new-instance v1, Lorg/xutils/http/HttpTask$RequestWorker;

    invoke-direct {v1, p0, v4}, Lorg/xutils/http/HttpTask$RequestWorker;-><init>(Lorg/xutils/http/HttpTask;Lorg/xutils/http/HttpTask$1;)V

    .line 298
    invoke-virtual {v1}, Lorg/xutils/http/HttpTask$RequestWorker;->request()V

    .line 299
    iget-object v8, v1, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;

    if-nez v8, :cond_e

    .line 302
    iget-object v1, v1, Lorg/xutils/http/HttpTask$RequestWorker;->result:Ljava/lang/Object;

    iput-object v1, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 312
    :try_start_9
    iget-object v8, p0, Lorg/xutils/http/HttpTask;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v8, :cond_b

    .line 314
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v1
    :try_end_9
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    if-nez v1, :cond_a

    .line 319
    :try_start_a
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    iget-object v8, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;

    invoke-interface {v1, v8}, Lorg/xutils/common/Callback$PrepareCallback;->prepare(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 321
    :try_start_b
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    goto :goto_4

    :catchall_5
    move-exception v1

    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 322
    throw v1

    .line 315
    :cond_a
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v8, "cancelled before request"

    invoke-direct {v1, v8}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    move-object v6, v1

    .line 328
    :goto_4
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/http/HttpMethod;->permitsCache(Lorg/xutils/http/HttpMethod;)Z

    move-result v1
    :try_end_b
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    if-eqz v1, :cond_c

    .line 330
    :try_start_c
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v1}, Lorg/xutils/http/request/UriRequest;->save2Cache()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v1

    :try_start_d
    const-string v8, "Error while storing the http cache."

    .line 332
    invoke-static {v8, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 336
    :cond_c
    :goto_5
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto/16 :goto_3

    .line 337
    :cond_d
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v8, "cancelled after request"

    invoke-direct {v1, v8}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 300
    :cond_e
    :try_start_e
    iget-object v1, v1, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :catchall_7
    move-exception v1

    .line 304
    :try_start_f
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 305
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 306
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v8, "cancelled during request"

    invoke-direct {v1, v8}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_f
    throw v1

    .line 287
    :cond_10
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v8, "cancelled before request"

    invoke-direct {v1, v8}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_f
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :catchall_8
    move-exception v1

    .line 343
    iget-object v5, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v5}, Lorg/xutils/http/request/UriRequest;->getResponseCode()I

    move-result v5

    const/16 v8, 0xcc

    if-eq v5, v8, :cond_12

    const/16 v8, 0xcd

    if-eq v5, v8, :cond_12

    const/16 v8, 0x130

    if-eq v5, v8, :cond_12

    .line 350
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_11

    instance-of v5, v1, Lorg/xutils/common/Callback$CancelledException;

    if-nez v5, :cond_11

    .line 351
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v5, "canceled by user"

    invoke-direct {v1, v5}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    :cond_11
    move-object v5, v1

    .line 353
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v1, v5, v7}, Lorg/xutils/http/app/HttpRetryHandler;->canRetry(Lorg/xutils/http/request/UriRequest;Ljava/lang/Throwable;I)Z

    move-result v1

    goto/16 :goto_3

    :cond_12
    return-object v4

    .line 341
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Http Redirect:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v8}, Lorg/xutils/http/RequestParams;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_3

    :cond_13
    if-eqz v5, :cond_15

    if-nez v6, :cond_15

    .line 360
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_6

    .line 361
    :cond_14
    iput-boolean v3, p0, Lorg/xutils/http/HttpTask;->hasException:Z

    .line 362
    throw v5

    :cond_15
    :goto_6
    return-object v6

    .line 205
    :cond_16
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled before request"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_17
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled before request"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 512
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getPriority()Lorg/xutils/common/task/Priority;
    .locals 1

    .line 517
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getPriority()Lorg/xutils/common/task/Priority;

    move-result-object v0

    return-object v0
.end method

.method protected isCancelFast()Z
    .locals 1

    .line 497
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->isCancelFast()Z

    move-result v0

    return v0
.end method

.method protected onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 2

    .line 458
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_0

    .line 459
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-interface {v0, v1}, Lorg/xutils/http/app/RequestTracker;->onCancelled(Lorg/xutils/http/request/UriRequest;)V

    .line 461
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CommonCallback;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    return-void
.end method

.method protected onError(Ljava/lang/Throwable;Z)V
    .locals 2

    .line 449
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_0

    .line 450
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-interface {v0, v1, p1, p2}, Lorg/xutils/http/app/RequestTracker;->onError(Lorg/xutils/http/request/UriRequest;Ljava/lang/Throwable;Z)V

    .line 452
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0, p1, p2}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method protected onFinished()V
    .locals 2

    .line 466
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_0

    .line 467
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-interface {v0, v1}, Lorg/xutils/http/app/RequestTracker;->onFinished(Lorg/xutils/http/request/UriRequest;)V

    .line 469
    :cond_0
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/http/HttpTask$1;

    invoke-direct {v1, p0}, Lorg/xutils/http/HttpTask$1;-><init>(Lorg/xutils/http/HttpTask;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->run(Ljava/lang/Runnable;)V

    .line 475
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V

    return-void
.end method

.method protected onStarted()V
    .locals 2

    .line 430
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_0

    .line 431
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-interface {v0, v1}, Lorg/xutils/http/app/RequestTracker;->onStart(Lorg/xutils/http/RequestParams;)V

    .line 433
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_1

    .line 434
    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onStarted()V

    :cond_1
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .line 440
    iget-boolean v0, p0, Lorg/xutils/http/HttpTask;->hasException:Z

    if-eqz v0, :cond_0

    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_1

    .line 442
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-interface {v0, v1, p1}, Lorg/xutils/http/app/RequestTracker;->onSuccess(Lorg/xutils/http/request/UriRequest;Ljava/lang/Object;)V

    .line 444
    :cond_1
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs onUpdate(I[Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    goto/16 :goto_2

    .line 400
    :cond_0
    iget-object v4, p0, Lorg/xutils/http/HttpTask;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v4, :cond_4

    array-length p1, p2

    if-ne p1, v3, :cond_4

    .line 402
    :try_start_0
    aget-object p1, p2, v0

    check-cast p1, Ljava/lang/Number;

    .line 403
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Number;

    .line 404
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Boolean;

    .line 405
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 402
    invoke-interface/range {v4 .. v9}, Lorg/xutils/common/Callback$ProgressCallback;->onLoading(JJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 407
    iget-object p2, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {p2, p1, v1}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_2

    .line 383
    :cond_1
    iget-object p1, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    monitor-enter p1

    .line 385
    :try_start_1
    aget-object p2, p2, v0

    .line 386
    iget-object v2, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v2, :cond_2

    .line 387
    iget-object v2, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    iget-object v3, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-interface {v2, v3, p2}, Lorg/xutils/http/app/RequestTracker;->onCache(Lorg/xutils/http/request/UriRequest;Ljava/lang/Object;)V

    .line 389
    :cond_2
    iget-object v2, p0, Lorg/xutils/http/HttpTask;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    invoke-interface {v2, p2}, Lorg/xutils/common/Callback$CacheCallback;->onCache(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 394
    :try_start_2
    iget-object p2, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    :catchall_1
    move-exception p2

    .line 391
    :try_start_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;

    .line 392
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0, p2, v1}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 394
    :try_start_4
    iget-object p2, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    goto :goto_0

    .line 396
    :goto_1
    monitor-exit p1

    goto :goto_2

    :catchall_2
    move-exception p2

    .line 394
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 395
    throw p2

    :catchall_3
    move-exception p2

    .line 396
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p2

    .line 377
    :cond_3
    iget-object p1, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz p1, :cond_4

    .line 378
    aget-object p2, p2, v0

    check-cast p2, Lorg/xutils/http/request/UriRequest;

    invoke-interface {p1, p2}, Lorg/xutils/http/app/RequestTracker;->onRequestCreated(Lorg/xutils/http/request/UriRequest;)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected onWaiting()V
    .locals 2

    .line 420
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_0

    .line 421
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-interface {v0, v1}, Lorg/xutils/http/app/RequestTracker;->onWaiting(Lorg/xutils/http/RequestParams;)V

    .line 423
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_1

    .line 424
    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onWaiting()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 559
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateProgress(JJZ)Z
    .locals 10

    .line 530
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 534
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    if-eqz v0, :cond_4

    const-wide/16 v3, 0x0

    cmp-long v0, p3, v3

    if-lez v0, :cond_4

    cmp-long v0, p1, v3

    if-gez v0, :cond_1

    const-wide/16 p1, -0x1

    goto :goto_0

    :cond_1
    cmp-long v0, p1, p3

    if-gez v0, :cond_2

    move-wide p1, p3

    :cond_2
    :goto_0
    const/4 v0, 0x2

    const/4 v3, 0x3

    if-eqz p5, :cond_3

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/xutils/http/HttpTask;->lastUpdateTime:J

    new-array p5, v3, [Ljava/lang/Object;

    .line 542
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v2

    iget-object p1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->isLoading()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p5, v0

    invoke-virtual {p0, v3, p5}, Lorg/xutils/http/HttpTask;->update(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 544
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 545
    iget-wide v6, p0, Lorg/xutils/http/HttpTask;->lastUpdateTime:J

    sub-long v6, v4, v6

    iget-wide v8, p0, Lorg/xutils/http/HttpTask;->loadingUpdateMaxTimeSpan:J

    cmp-long p5, v6, v8

    if-ltz p5, :cond_4

    .line 546
    iput-wide v4, p0, Lorg/xutils/http/HttpTask;->lastUpdateTime:J

    new-array p5, v3, [Ljava/lang/Object;

    .line 547
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v2

    iget-object p1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->isLoading()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p5, v0

    invoke-virtual {p0, v3, p5}, Lorg/xutils/http/HttpTask;->update(I[Ljava/lang/Object;)V

    .line 552
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_2
    return v1
.end method
