.class final Lorg/xutils/image/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lorg/xutils/common/Callback$PrepareCallback;
.implements Lorg/xutils/common/Callback$CacheCallback;
.implements Lorg/xutils/common/Callback$ProgressCallback;
.implements Lorg/xutils/common/Callback$TypedCallback;
.implements Lorg/xutils/common/Callback$Cancelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/image/ImageLoader$FakeImageView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback$PrepareCallback<",
        "Ljava/io/File;",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lorg/xutils/common/Callback$CacheCallback<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lorg/xutils/common/Callback$ProgressCallback<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lorg/xutils/common/Callback$TypedCallback<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lorg/xutils/common/Callback$Cancelable;"
    }
.end annotation


# static fields
.field private static final DISK_CACHE_DIR_NAME:Ljava/lang/String; = "xUtils_img"

.field private static final EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final FAKE_IMG_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageLoader$FakeImageView;",
            ">;"
        }
    .end annotation
.end field

.field private static final MEM_CACHE:Lorg/xutils/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/cache/LruCache<",
            "Lorg/xutils/image/MemCacheKey;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final MEM_CACHE_MIN_SIZE:I = 0x400000

.field private static final SEQ_SEEK:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final loadType:Ljava/lang/reflect/Type;


# instance fields
.field private cacheCallback:Lorg/xutils/common/Callback$CacheCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$CacheCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Lorg/xutils/common/Callback$CommonCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$CommonCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cancelled:Z

.field private fileLockedExceptionRetryCount:I

.field private hasCache:Z

.field private httpCancelable:Lorg/xutils/common/Callback$Cancelable;

.field private key:Lorg/xutils/image/MemCacheKey;

.field private options:Lorg/xutils/image/ImageOptions;

.field private prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$PrepareCallback<",
            "Ljava/io/File;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private progressCallback:Lorg/xutils/common/Callback$ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$ProgressCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final seq:J

.field private volatile skipOnFinishedCallback:Z

.field private volatile skipOnWaitingCallback:Z

.field private volatile stopped:Z

.field private viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/xutils/image/ImageLoader;->SEQ_SEEK:Ljava/util/concurrent/atomic/AtomicLong;

    .line 66
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    sput-object v0, Lorg/xutils/image/ImageLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    .line 68
    new-instance v0, Lorg/xutils/image/ImageLoader$1;

    const/high16 v1, 0x400000

    invoke-direct {v0, v1}, Lorg/xutils/image/ImageLoader$1;-><init>(I)V

    sput-object v0, Lorg/xutils/image/ImageLoader;->MEM_CACHE:Lorg/xutils/cache/LruCache;

    .line 102
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v0

    const-string v2, "activity"

    .line 103
    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/high16 v2, 0x100000

    mul-int v0, v0, v2

    .line 106
    div-int/lit8 v0, v0, 0x8

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 110
    :goto_0
    sget-object v0, Lorg/xutils/image/ImageLoader;->MEM_CACHE:Lorg/xutils/cache/LruCache;

    invoke-virtual {v0, v1}, Lorg/xutils/cache/LruCache;->resize(I)V

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xutils/image/ImageLoader;->FAKE_IMG_MAP:Ljava/util/HashMap;

    .line 364
    const-class v0, Ljava/io/File;

    sput-object v0, Lorg/xutils/image/ImageLoader;->loadType:Ljava/lang/reflect/Type;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lorg/xutils/image/ImageLoader;->fileLockedExceptionRetryCount:I

    .line 53
    sget-object v1, Lorg/xutils/image/ImageLoader;->SEQ_SEEK:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/xutils/image/ImageLoader;->seq:J

    .line 55
    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader;->stopped:Z

    .line 56
    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader;->cancelled:Z

    .line 57
    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader;->skipOnWaitingCallback:Z

    .line 58
    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader;->skipOnFinishedCallback:Z

    .line 400
    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader;->hasCache:Z

    return-void
.end method

.method static synthetic access$000(Lorg/xutils/image/ImageLoader;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/xutils/image/ImageLoader;->viewRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100(Lorg/xutils/image/ImageLoader;)Lorg/xutils/image/MemCacheKey;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    return-object p0
.end method

.method static synthetic access$200(Lorg/xutils/image/ImageLoader;)Lorg/xutils/image/ImageOptions;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    return-object p0
.end method

.method static synthetic access$300(Lorg/xutils/image/ImageLoader;)I
    .locals 0

    .line 40
    iget p0, p0, Lorg/xutils/image/ImageLoader;->fileLockedExceptionRetryCount:I

    return p0
.end method

.method static synthetic access$400(Lorg/xutils/image/ImageLoader;)Lorg/xutils/common/Callback$CommonCallback;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    return-object p0
.end method

.method static clearCacheFiles()V
    .locals 1

    const-string v0, "xUtils_img"

    .line 123
    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/cache/LruDiskCache;->clearCacheFiles()V

    return-void
.end method

.method static clearMemCache()V
    .locals 1

    .line 118
    sget-object v0, Lorg/xutils/image/ImageLoader;->MEM_CACHE:Lorg/xutils/cache/LruCache;

    invoke-virtual {v0}, Lorg/xutils/cache/LruCache;->evictAll()V

    return-void
.end method

.method private static createRequestParams(Landroid/content/Context;Ljava/lang/String;Lorg/xutils/image/ImageOptions;)Lorg/xutils/http/RequestParams;
    .locals 1

    .line 490
    new-instance v0, Lorg/xutils/http/RequestParams;

    invoke-direct {v0, p1}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 492
    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setContext(Landroid/content/Context;)V

    :cond_0
    const-string p0, "xUtils_img"

    .line 494
    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setCacheDirName(Ljava/lang/String;)V

    const/16 p0, 0x1f40

    .line 495
    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setConnectTimeout(I)V

    .line 496
    sget-object p0, Lorg/xutils/common/task/Priority;->BG_LOW:Lorg/xutils/common/task/Priority;

    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setPriority(Lorg/xutils/common/task/Priority;)V

    .line 497
    sget-object p0, Lorg/xutils/image/ImageLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setExecutor(Ljava/util/concurrent/Executor;)V

    const/4 p0, 0x1

    .line 498
    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setCancelFast(Z)V

    const/4 p0, 0x0

    .line 499
    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setUseCookie(Z)V

    if-eqz p2, :cond_1

    .line 501
    invoke-virtual {p2}, Lorg/xutils/image/ImageOptions;->getParamsBuilder()Lorg/xutils/image/ImageOptions$ParamsBuilder;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 503
    invoke-interface {p0, v0, p2}, Lorg/xutils/image/ImageOptions$ParamsBuilder;->buildParams(Lorg/xutils/http/RequestParams;Lorg/xutils/image/ImageOptions;)Lorg/xutils/http/RequestParams;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method static doBind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;ILorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "I",
            "Lorg/xutils/common/Callback$CommonCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "view is null"

    .line 174
    invoke-static {v0, p2, p0, p4}, Lorg/xutils/image/ImageLoader;->postArgsException(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    return-object v0

    .line 178
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "url is null"

    .line 179
    invoke-static {p0, p2, p1, p4}, Lorg/xutils/image/ImageLoader;->postArgsException(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    return-object v0

    :cond_1
    if-nez p2, :cond_2

    .line 184
    sget-object p2, Lorg/xutils/image/ImageOptions;->DEFAULT:Lorg/xutils/image/ImageOptions;

    .line 186
    :cond_2
    invoke-virtual {p2, p0}, Lorg/xutils/image/ImageOptions;->optimizeMaxSize(Landroid/widget/ImageView;)V

    .line 190
    new-instance v1, Lorg/xutils/image/MemCacheKey;

    invoke-direct {v1, p1, p2}, Lorg/xutils/image/MemCacheKey;-><init>(Ljava/lang/String;Lorg/xutils/image/ImageOptions;)V

    .line 191
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 192
    instance-of v3, v2, Lorg/xutils/image/AsyncDrawable;

    if-eqz v3, :cond_4

    .line 193
    check-cast v2, Lorg/xutils/image/AsyncDrawable;

    invoke-virtual {v2}, Lorg/xutils/image/AsyncDrawable;->getImageLoader()Lorg/xutils/image/ImageLoader;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 194
    iget-boolean v3, v2, Lorg/xutils/image/ImageLoader;->stopped:Z

    if-nez v3, :cond_5

    .line 195
    iget-object v3, v2, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    invoke-virtual {v1, v3}, Lorg/xutils/image/MemCacheKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v0

    .line 200
    :cond_3
    invoke-virtual {v2}, Lorg/xutils/image/ImageLoader;->cancel()V

    goto :goto_0

    .line 203
    :cond_4
    instance-of v3, v2, Lorg/xutils/image/ReusableDrawable;

    if-eqz v3, :cond_5

    .line 204
    move-object v3, v2

    check-cast v3, Lorg/xutils/image/ReusableDrawable;

    invoke-interface {v3}, Lorg/xutils/image/ReusableDrawable;->getMemCacheKey()Lorg/xutils/image/MemCacheKey;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 205
    invoke-virtual {v3, v1}, Lorg/xutils/image/MemCacheKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 206
    sget-object v3, Lorg/xutils/image/ImageLoader;->MEM_CACHE:Lorg/xutils/cache/LruCache;

    invoke-virtual {v3, v1, v2}, Lorg/xutils/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_5
    :goto_0
    invoke-virtual {p2}, Lorg/xutils/image/ImageOptions;->isUseMemCache()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 213
    sget-object v2, Lorg/xutils/image/ImageLoader;->MEM_CACHE:Lorg/xutils/cache/LruCache;

    invoke-virtual {v2, v1}, Lorg/xutils/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 214
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_7

    .line 215
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 216
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move-object v1, v0

    :cond_7
    if-eqz v1, :cond_f

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 224
    :try_start_0
    instance-of v4, p4, Lorg/xutils/common/Callback$ProgressCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v4, :cond_8

    .line 226
    :try_start_1
    move-object v4, p4

    check-cast v4, Lorg/xutils/common/Callback$ProgressCallback;

    invoke-interface {v4}, Lorg/xutils/common/Callback$ProgressCallback;->onWaiting()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 228
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    :cond_8
    :goto_1
    instance-of v4, p4, Lorg/xutils/common/Callback$CacheCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v4, :cond_9

    .line 235
    :try_start_3
    move-object v4, p4

    check-cast v4, Lorg/xutils/common/Callback$CacheCallback;

    invoke-interface {v4, v1}, Lorg/xutils/common/Callback$CacheCallback;->onCache(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    .line 237
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    const/4 v4, 0x0

    goto :goto_2

    :cond_9
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_c

    .line 245
    :try_start_5
    invoke-virtual {p2}, Lorg/xutils/image/ImageOptions;->getImageScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 246
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz p4, :cond_a

    .line 249
    :try_start_6
    invoke-interface {p4, v1}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    .line 251
    :try_start_7
    invoke-interface {p4, v1, v3}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :cond_a
    :goto_3
    if-eqz v4, :cond_b

    if-eqz p4, :cond_b

    .line 274
    :try_start_8
    invoke-interface {p4}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p0

    .line 276
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_4
    return-object v0

    .line 258
    :cond_c
    :try_start_9
    new-instance v0, Lorg/xutils/image/ImageLoader;

    invoke-direct {v0}, Lorg/xutils/image/ImageLoader;-><init>()V

    .line 259
    iput p3, v0, Lorg/xutils/image/ImageLoader;->fileLockedExceptionRetryCount:I

    .line 260
    iput-boolean v3, v0, Lorg/xutils/image/ImageLoader;->skipOnWaitingCallback:Z

    .line 261
    invoke-direct {v0, p0, p1, p2, p4}, Lorg/xutils/image/ImageLoader;->doLoadRequest(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v4, :cond_d

    if-eqz p4, :cond_d

    .line 274
    :try_start_a
    invoke-interface {p4}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p1

    .line 276
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_5
    return-object p0

    :catchall_5
    move-exception v0

    goto :goto_6

    :catchall_6
    move-exception v0

    const/4 v4, 0x0

    .line 264
    :goto_6
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 267
    :try_start_c
    new-instance v0, Lorg/xutils/image/ImageLoader;

    invoke-direct {v0}, Lorg/xutils/image/ImageLoader;-><init>()V

    .line 268
    iput p3, v0, Lorg/xutils/image/ImageLoader;->fileLockedExceptionRetryCount:I

    .line 269
    iput-boolean v3, v0, Lorg/xutils/image/ImageLoader;->skipOnWaitingCallback:Z

    .line 270
    invoke-direct {v0, p0, p1, p2, p4}, Lorg/xutils/image/ImageLoader;->doLoadRequest(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    return-object p0

    :catchall_7
    move-exception p0

    goto :goto_7

    :catchall_8
    move-exception p0

    move v2, v4

    :goto_7
    if-eqz v2, :cond_e

    if-eqz p4, :cond_e

    .line 274
    :try_start_d
    invoke-interface {p4}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    goto :goto_8

    :catchall_9
    move-exception p1

    .line 276
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    :cond_e
    :goto_8
    throw p0

    .line 282
    :cond_f
    new-instance v0, Lorg/xutils/image/ImageLoader;

    invoke-direct {v0}, Lorg/xutils/image/ImageLoader;-><init>()V

    .line 283
    iput p3, v0, Lorg/xutils/image/ImageLoader;->fileLockedExceptionRetryCount:I

    .line 284
    invoke-direct {v0, p0, p1, p2, p4}, Lorg/xutils/image/ImageLoader;->doLoadRequest(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p0

    return-object p0
.end method

.method static doLoadDrawable(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "Lorg/xutils/common/Callback$CommonCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .line 135
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    const-string v0, "url is null"

    .line 136
    invoke-static {p0, p1, v0, p2}, Lorg/xutils/image/ImageLoader;->postArgsException(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    return-object p0

    .line 140
    :cond_0
    new-instance v0, Lorg/xutils/image/ImageLoader$FakeImageView;

    invoke-direct {v0}, Lorg/xutils/image/ImageLoader$FakeImageView;-><init>()V

    const/4 v1, 0x0

    .line 141
    invoke-static {v0, p0, p1, v1, p2}, Lorg/xutils/image/ImageLoader;->doBind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;ILorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p0

    return-object p0
.end method

.method static doLoadFile(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CacheCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "Lorg/xutils/common/Callback$CacheCallback<",
            "Ljava/io/File;",
            ">;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .line 151
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "url is null"

    .line 152
    invoke-static {v1, p1, p0, p2}, Lorg/xutils/image/ImageLoader;->postArgsException(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    return-object v1

    .line 156
    :cond_0
    invoke-static {v1, p0, p1}, Lorg/xutils/image/ImageLoader;->createRequestParams(Landroid/content/Context;Ljava/lang/String;Lorg/xutils/image/ImageOptions;)Lorg/xutils/http/RequestParams;

    move-result-object p0

    .line 157
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lorg/xutils/HttpManager;->get(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p0

    return-object p0
.end method

.method private doLoadRequest(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "Lorg/xutils/common/Callback$CommonCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/xutils/image/ImageLoader;->viewRef:Ljava/lang/ref/WeakReference;

    .line 298
    iput-object p3, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    .line 299
    new-instance v0, Lorg/xutils/image/MemCacheKey;

    invoke-direct {v0, p2, p3}, Lorg/xutils/image/MemCacheKey;-><init>(Ljava/lang/String;Lorg/xutils/image/ImageOptions;)V

    iput-object v0, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    .line 300
    iput-object p4, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    .line 301
    instance-of v0, p4, Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_0

    .line 302
    move-object v0, p4

    check-cast v0, Lorg/xutils/common/Callback$ProgressCallback;

    iput-object v0, p0, Lorg/xutils/image/ImageLoader;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    .line 304
    :cond_0
    instance-of v0, p4, Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v0, :cond_1

    .line 305
    move-object v0, p4

    check-cast v0, Lorg/xutils/common/Callback$PrepareCallback;

    iput-object v0, p0, Lorg/xutils/image/ImageLoader;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    .line 307
    :cond_1
    instance-of v0, p4, Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v0, :cond_2

    .line 308
    check-cast p4, Lorg/xutils/common/Callback$CacheCallback;

    iput-object p4, p0, Lorg/xutils/image/ImageLoader;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    .line 312
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 313
    invoke-virtual {p3}, Lorg/xutils/image/ImageOptions;->isForceLoadingDrawable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 314
    :cond_3
    invoke-virtual {p3, p1}, Lorg/xutils/image/ImageOptions;->getLoadingDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 315
    invoke-virtual {p3}, Lorg/xutils/image/ImageOptions;->getPlaceholderScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 317
    :cond_4
    new-instance v0, Lorg/xutils/image/AsyncDrawable;

    invoke-direct {v0, p0, p4}, Lorg/xutils/image/AsyncDrawable;-><init>(Lorg/xutils/image/ImageLoader;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p2, p3}, Lorg/xutils/image/ImageLoader;->createRequestParams(Landroid/content/Context;Ljava/lang/String;Lorg/xutils/image/ImageOptions;)Lorg/xutils/http/RequestParams;

    move-result-object p3

    .line 321
    instance-of p4, p1, Lorg/xutils/image/ImageLoader$FakeImageView;

    if-eqz p4, :cond_5

    .line 322
    sget-object p4, Lorg/xutils/image/ImageLoader;->FAKE_IMG_MAP:Ljava/util/HashMap;

    monitor-enter p4

    .line 323
    :try_start_0
    sget-object v0, Lorg/xutils/image/ImageLoader;->FAKE_IMG_MAP:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lorg/xutils/image/ImageLoader$FakeImageView;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    monitor-exit p4

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 326
    :cond_5
    :goto_0
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object p1

    invoke-interface {p1, p3, p0}, Lorg/xutils/HttpManager;->get(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/image/ImageLoader;->httpCancelable:Lorg/xutils/common/Callback$Cancelable;

    return-object p1
.end method

.method private static postArgsException(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Lorg/xutils/image/ImageOptions;",
            "Ljava/lang/String;",
            "Lorg/xutils/common/Callback$CommonCallback<",
            "*>;)V"
        }
    .end annotation

    .line 569
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/image/ImageLoader$3;

    invoke-direct {v1, p3, p0, p1, p2}, Lorg/xutils/image/ImageLoader$3;-><init>(Lorg/xutils/common/Callback$CommonCallback;Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->autoPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setErrorDrawable4Callback()V
    .locals 3

    .line 558
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 560
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1, v0}, Lorg/xutils/image/ImageOptions;->getFailureDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 561
    iget-object v2, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v2}, Lorg/xutils/image/ImageOptions;->getPlaceholderScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 562
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setSuccessDrawable4Callback(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 538
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 540
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->getImageScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 541
    instance-of v1, p1, Lorg/xutils/image/GifDrawable;

    if-eqz v1, :cond_1

    .line 542
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_0

    .line 543
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 545
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 547
    :cond_1
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 548
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/xutils/image/ImageAnimationHelper;->animationDisplay(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 549
    :cond_2
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->isFadeIn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 550
    invoke-static {v0, p1}, Lorg/xutils/image/ImageAnimationHelper;->fadeInDisplay(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 552
    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private validView4Callback(Z)Z
    .locals 8

    .line 510
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 512
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 513
    instance-of v2, v0, Lorg/xutils/image/AsyncDrawable;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 514
    check-cast v0, Lorg/xutils/image/AsyncDrawable;

    invoke-virtual {v0}, Lorg/xutils/image/AsyncDrawable;->getImageLoader()Lorg/xutils/image/ImageLoader;

    move-result-object p1

    if-eqz p1, :cond_3

    if-ne p1, p0, :cond_0

    return v3

    .line 519
    :cond_0
    iget-wide v4, p0, Lorg/xutils/image/ImageLoader;->seq:J

    iget-wide v6, p1, Lorg/xutils/image/ImageLoader;->seq:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    .line 520
    invoke-virtual {p1}, Lorg/xutils/image/ImageLoader;->cancel()V

    return v3

    .line 523
    :cond_1
    invoke-virtual {p0}, Lorg/xutils/image/ImageLoader;->cancel()V

    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 529
    invoke-virtual {p0}, Lorg/xutils/image/ImageLoader;->cancel()V

    return v1

    :cond_3
    return v3

    :cond_4
    return v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader;->stopped:Z

    .line 332
    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader;->cancelled:Z

    .line 333
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->httpCancelable:Lorg/xutils/common/Callback$Cancelable;

    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v0}, Lorg/xutils/common/Callback$Cancelable;->cancel()V

    :cond_0
    return-void
.end method

.method public getLoadType()Ljava/lang/reflect/Type;
    .locals 1

    .line 368
    sget-object v0, Lorg/xutils/image/ImageLoader;->loadType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 2

    .line 340
    iget-boolean v0, p0, Lorg/xutils/image/ImageLoader;->cancelled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onCache(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    const/4 v0, 0x1

    .line 404
    invoke-direct {p0, v0}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_3

    .line 407
    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader;->hasCache:Z

    .line 408
    invoke-direct {p0, p1}, Lorg/xutils/image/ImageLoader;->setSuccessDrawable4Callback(Landroid/graphics/drawable/Drawable;)V

    .line 409
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v1, :cond_1

    .line 410
    invoke-interface {v1, p1}, Lorg/xutils/common/Callback$CacheCallback;->onCache(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 411
    :cond_1
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v1, :cond_2

    .line 412
    invoke-interface {v1, p1}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method public bridge synthetic onCache(Ljava/lang/Object;)Z
    .locals 0

    .line 40
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lorg/xutils/image/ImageLoader;->onCache(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method

.method public onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 1

    const/4 v0, 0x1

    .line 464
    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader;->stopped:Z

    const/4 v0, 0x0

    .line 465
    invoke-direct {p0, v0}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_1

    .line 468
    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CommonCallback;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;Z)V
    .locals 3

    const/4 v0, 0x1

    .line 435
    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader;->stopped:Z

    const/4 v1, 0x0

    .line 436
    invoke-direct {p0, v1}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 438
    :cond_0
    iget v1, p0, Lorg/xutils/image/ImageLoader;->fileLockedExceptionRetryCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/xutils/image/ImageLoader;->fileLockedExceptionRetryCount:I

    .line 439
    instance-of v2, p1, Lorg/xutils/ex/FileLockedException;

    if-eqz v2, :cond_1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_1

    .line 440
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ImageFileLocked: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    iget-object p2, p2, Lorg/xutils/image/MemCacheKey;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 441
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object p1

    new-instance p2, Lorg/xutils/image/ImageLoader$2;

    invoke-direct {p2, p0}, Lorg/xutils/image/ImageLoader$2;-><init>(Lorg/xutils/image/ImageLoader;)V

    const-wide/16 v1, 0xa

    invoke-interface {p1, p2, v1, v2}, Lorg/xutils/common/TaskController;->postDelayed(Ljava/lang/Runnable;J)V

    .line 452
    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader;->skipOnFinishedCallback:Z

    goto :goto_0

    .line 454
    :cond_1
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    iget-object v0, v0, Lorg/xutils/image/MemCacheKey;->url:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 455
    invoke-direct {p0}, Lorg/xutils/image/ImageLoader;->setErrorDrawable4Callback()V

    .line 456
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_2

    .line 457
    invoke-interface {v0, p1, p2}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFinished()V
    .locals 4

    const/4 v0, 0x1

    .line 474
    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader;->stopped:Z

    .line 475
    iget-boolean v0, p0, Lorg/xutils/image/ImageLoader;->skipOnFinishedCallback:Z

    if-eqz v0, :cond_0

    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 478
    instance-of v1, v0, Lorg/xutils/image/ImageLoader$FakeImageView;

    if-eqz v1, :cond_1

    .line 479
    sget-object v1, Lorg/xutils/image/ImageLoader;->FAKE_IMG_MAP:Ljava/util/HashMap;

    monitor-enter v1

    .line 480
    :try_start_0
    sget-object v2, Lorg/xutils/image/ImageLoader;->FAKE_IMG_MAP:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    iget-object v0, v0, Lorg/xutils/image/MemCacheKey;->url:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 484
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_2

    .line 485
    invoke-interface {v0}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V

    :cond_2
    return-void
.end method

.method public onLoading(JJZ)V
    .locals 7

    const/4 v0, 0x1

    .line 359
    invoke-direct {p0, v0}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v1, :cond_0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 360
    invoke-interface/range {v1 .. v6}, Lorg/xutils/common/Callback$ProgressCallback;->onLoading(JJZ)V

    :cond_0
    return-void
.end method

.method public onStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 352
    invoke-direct {p0, v0}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_0

    .line 353
    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onStarted()V

    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 423
    iget-boolean v0, p0, Lorg/xutils/image/ImageLoader;->hasCache:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 426
    invoke-direct {p0, p1}, Lorg/xutils/image/ImageLoader;->setSuccessDrawable4Callback(Landroid/graphics/drawable/Drawable;)V

    .line 427
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_1

    .line 428
    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lorg/xutils/image/ImageLoader;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onWaiting()V
    .locals 1

    .line 345
    iget-boolean v0, p0, Lorg/xutils/image/ImageLoader;->skipOnWaitingCallback:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onWaiting()V

    :cond_0
    return-void
.end method

.method public prepare(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    .line 373
    invoke-direct {p0, v0}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 375
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 381
    :try_start_0
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$PrepareCallback;->prepare(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    :cond_1
    if-nez v1, :cond_2

    .line 385
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {p1, v0, p0}, Lorg/xutils/image/ImageDecoder;->decodeFileWithLock(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 388
    instance-of v0, v1, Lorg/xutils/image/ReusableDrawable;

    if-eqz v0, :cond_3

    .line 389
    move-object v0, v1

    check-cast v0, Lorg/xutils/image/ReusableDrawable;

    iget-object v2, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    invoke-interface {v0, v2}, Lorg/xutils/image/ReusableDrawable;->setMemCacheKey(Lorg/xutils/image/MemCacheKey;)V

    .line 390
    sget-object v0, Lorg/xutils/image/ImageLoader;->MEM_CACHE:Lorg/xutils/cache/LruCache;

    iget-object v2, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    invoke-virtual {v0, v2, v1}, Lorg/xutils/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    :catch_0
    move-exception v0

    .line 395
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 396
    throw v0

    .line 376
    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic prepare(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 40
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/xutils/image/ImageLoader;->prepare(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
