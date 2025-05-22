.class final Lcom/alibaba/android/arouter/launcher/_ARouter;
.super Ljava/lang/Object;
.source "_ARouter.java"


# static fields
.field private static volatile autoInject:Z

.field private static volatile debuggable:Z

.field private static volatile executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile hasInit:Z

.field private static volatile instance:Lcom/alibaba/android/arouter/launcher/_ARouter;

.field private static interceptorService:Lcom/alibaba/android/arouter/facade/service/InterceptorService;

.field static logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static volatile monitorMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/alibaba/android/arouter/utils/DefaultLogger;

    const-string v1, "ARouter::"

    invoke-direct {v0, v1}, Lcom/alibaba/android/arouter/utils/DefaultLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const/4 v0, 0x0

    .line 43
    sput-boolean v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->monitorMode:Z

    .line 44
    sput-boolean v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->debuggable:Z

    .line 45
    sput-boolean v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->autoInject:Z

    const/4 v1, 0x0

    .line 46
    sput-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->instance:Lcom/alibaba/android/arouter/launcher/_ARouter;

    .line 47
    sput-boolean v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->hasInit:Z

    .line 48
    invoke-static {}, Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;->getInstance()Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private _navigation(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;
    .locals 8

    if-nez p1, :cond_0

    .line 350
    sget-object p1, Lcom/alibaba/android/arouter/launcher/_ARouter;->mContext:Landroid/content/Context;

    :cond_0
    move-object v3, p1

    .line 352
    sget-object p1, Lcom/alibaba/android/arouter/launcher/_ARouter$4;->$SwitchMap$com$alibaba$android$arouter$facade$enums$RouteType:[I

    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getType()Lcom/alibaba/android/arouter/facade/enums/RouteType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/enums/RouteType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eq p1, v0, :cond_5

    const/4 p3, 0x2

    if-eq p1, p3, :cond_4

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    goto :goto_1

    .line 386
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getDestination()Ljava/lang/Class;

    move-result-object p1

    const/4 p3, 0x0

    :try_start_0
    new-array p4, p3, [Ljava/lang/Class;

    .line 388
    invoke-virtual {p1, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 389
    instance-of p3, p1, Landroid/app/Fragment;

    if-eqz p3, :cond_2

    .line 390
    move-object p3, p1

    check-cast p3, Landroid/app/Fragment;

    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 391
    :cond_2
    instance-of p3, p1, Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_3

    .line 392
    move-object p3, p1

    check-cast p3, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 397
    sget-object p2, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Fetch fragment instance error, "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/arouter/utils/TextUtils;->formatStackTrace([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ARouter::"

    invoke-interface {p2, p3, p1}, Lcom/alibaba/android/arouter/facade/template/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v7

    .line 382
    :cond_4
    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getProvider()Lcom/alibaba/android/arouter/facade/template/IProvider;

    move-result-object p1

    return-object p1

    .line 355
    :cond_5
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getDestination()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v4, v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 359
    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getFlags()I

    move-result p1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_6

    .line 361
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 362
    :cond_6
    instance-of p1, v3, Landroid/app/Activity;

    if-nez p1, :cond_7

    const/high16 p1, 0x10000000

    .line 363
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 367
    :cond_7
    :goto_2
    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-static {p1}, Lcom/alibaba/android/arouter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 369
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    :cond_8
    new-instance p1, Lcom/alibaba/android/arouter/launcher/_ARouter$3;

    move-object v0, p1

    move-object v1, p0

    move v2, p3

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/arouter/launcher/_ARouter$3;-><init>(Lcom/alibaba/android/arouter/launcher/_ARouter;ILandroid/content/Context;Landroid/content/Intent;Lcom/alibaba/android/arouter/facade/Postcard;Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;)V

    invoke-direct {p0, p1}, Lcom/alibaba/android/arouter/launcher/_ARouter;->runInMainThread(Ljava/lang/Runnable;)V

    return-object v7
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 41
    sget-object v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/android/arouter/launcher/_ARouter;Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/arouter/launcher/_ARouter;->_navigation(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/android/arouter/launcher/_ARouter;ILandroid/content/Context;Landroid/content/Intent;Lcom/alibaba/android/arouter/facade/Postcard;Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;)V
    .locals 0

    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/android/arouter/launcher/_ARouter;->startActivity(ILandroid/content/Context;Landroid/content/Intent;Lcom/alibaba/android/arouter/facade/Postcard;Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;)V

    return-void
.end method

.method static afterInit()V
    .locals 2

    .line 241
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/arouter/service/interceptor"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/arouter/facade/service/InterceptorService;

    sput-object v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->interceptorService:Lcom/alibaba/android/arouter/facade/service/InterceptorService;

    return-void
.end method

.method static attachBaseContext()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "ARouter::"

    const-string v1, "ARouter start attachBaseContext"

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 119
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 122
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x1

    .line 123
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v5, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 124
    invoke-virtual {v2, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mInstrumentation"

    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 128
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 131
    new-instance v3, Lcom/alibaba/android/arouter/core/InstrumentationHook;

    invoke-direct {v3}, Lcom/alibaba/android/arouter/core/InstrumentationHook;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "ARouter hook instrumentation success!"

    .line 132
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ARouter hook instrumentation failed! ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static canAutoInject()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    sget-boolean v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->autoInject:Z

    return v0
.end method

.method static debuggable()Z
    .locals 1

    .line 157
    sget-boolean v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->debuggable:Z

    return v0
.end method

.method static declared-synchronized destroy()V
    .locals 4

    const-class v0, Lcom/alibaba/android/arouter/launcher/_ARouter;

    monitor-enter v0

    .line 71
    :try_start_0
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/_ARouter;->debuggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 72
    sput-boolean v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->hasInit:Z

    .line 73
    invoke-static {}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->suspend()V

    .line 74
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v2, "ARouter::"

    const-string v3, "ARouter destroy success!"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v2, "ARouter::"

    const-string v3, "Destroy can be used in debug mode only!"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/arouter/facade/template/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized enableAutoInject()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/alibaba/android/arouter/launcher/_ARouter;

    monitor-enter v0

    const/4 v1, 0x1

    .line 107
    :try_start_0
    sput-boolean v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->autoInject:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private extractGroup(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 222
    invoke-static {p1}, Lcom/alibaba/android/arouter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 227
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-static {p1}, Lcom/alibaba/android/arouter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 229
    :cond_0
    new-instance p1, Lcom/alibaba/android/arouter/exception/HandlerException;

    const-string v0, "ARouter::Extract the default group failed! There\'s nothing between 2 \'/\'!"

    invoke-direct {p1, v0}, Lcom/alibaba/android/arouter/exception/HandlerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 234
    sget-object v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to extract default group! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ARouter::"

    invoke-interface {v0, v1, p1}, Lcom/alibaba/android/arouter/facade/template/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 223
    :cond_1
    new-instance p1, Lcom/alibaba/android/arouter/exception/HandlerException;

    const-string v0, "ARouter::Extract the default group failed, the path must be start with \'/\' and contain more than 2 \'/\'!"

    invoke-direct {p1, v0}, Lcom/alibaba/android/arouter/exception/HandlerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static getInstance()Lcom/alibaba/android/arouter/launcher/_ARouter;
    .locals 2

    .line 81
    sget-boolean v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->hasInit:Z

    if-eqz v0, :cond_2

    .line 84
    sget-object v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->instance:Lcom/alibaba/android/arouter/launcher/_ARouter;

    if-nez v0, :cond_1

    .line 85
    const-class v0, Lcom/alibaba/android/arouter/launcher/_ARouter;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->instance:Lcom/alibaba/android/arouter/launcher/_ARouter;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lcom/alibaba/android/arouter/launcher/_ARouter;

    invoke-direct {v1}, Lcom/alibaba/android/arouter/launcher/_ARouter;-><init>()V

    sput-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->instance:Lcom/alibaba/android/arouter/launcher/_ARouter;

    .line 89
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 91
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->instance:Lcom/alibaba/android/arouter/launcher/_ARouter;

    return-object v0

    .line 82
    :cond_2
    new-instance v0, Lcom/alibaba/android/arouter/exception/InitException;

    const-string v1, "ARouterCore::Init::Invoke init(context) first!"

    invoke-direct {v0, v1}, Lcom/alibaba/android/arouter/exception/InitException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static declared-synchronized init(Landroid/app/Application;)Z
    .locals 3

    const-class v0, Lcom/alibaba/android/arouter/launcher/_ARouter;

    monitor-enter v0

    .line 58
    :try_start_0
    sput-object p0, Lcom/alibaba/android/arouter/launcher/_ARouter;->mContext:Landroid/content/Context;

    .line 59
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p0, v1}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->init(Landroid/content/Context;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 60
    sget-object p0, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v1, "ARouter::"

    const-string v2, "ARouter init success!"

    invoke-interface {p0, v1, v2}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 61
    sput-boolean p0, Lcom/alibaba/android/arouter/launcher/_ARouter;->hasInit:Z

    .line 62
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static inject(Ljava/lang/Object;)V
    .locals 2

    .line 167
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/arouter/service/autowired"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/arouter/facade/service/AutowiredService;

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0, p0}, Lcom/alibaba/android/arouter/facade/service/AutowiredService;->autowire(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static isMonitorMode()Z
    .locals 1

    .line 153
    sget-boolean v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->monitorMode:Z

    return v0
.end method

.method static declared-synchronized monitorMode()V
    .locals 4

    const-class v0, Lcom/alibaba/android/arouter/launcher/_ARouter;

    monitor-enter v0

    const/4 v1, 0x1

    .line 148
    :try_start_0
    sput-boolean v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->monitorMode:Z

    .line 149
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v2, "ARouter::"

    const-string v3, "ARouter monitorMode on"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized openDebug()V
    .locals 4

    const-class v0, Lcom/alibaba/android/arouter/launcher/_ARouter;

    monitor-enter v0

    const/4 v1, 0x1

    .line 96
    :try_start_0
    sput-boolean v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->debuggable:Z

    .line 97
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v2, "ARouter::"

    const-string v3, "ARouter openDebug"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized openLog()V
    .locals 4

    const-class v0, Lcom/alibaba/android/arouter/launcher/_ARouter;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/alibaba/android/arouter/facade/template/ILogger;->showLog(Z)V

    .line 102
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v2, "ARouter::"

    const-string v3, "ARouter openLog"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized printStackTrace()V
    .locals 4

    const-class v0, Lcom/alibaba/android/arouter/launcher/_ARouter;

    monitor-enter v0

    .line 139
    :try_start_0
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/alibaba/android/arouter/facade/template/ILogger;->showStackTrace(Z)V

    .line 140
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v2, "ARouter::"

    const-string v3, "ARouter printStackTrace"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private runInMainThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 414
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 415
    sget-object v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 417
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method static declared-synchronized setExecutor(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    const-class v0, Lcom/alibaba/android/arouter/launcher/_ARouter;

    monitor-enter v0

    .line 144
    :try_start_0
    sput-object p0, Lcom/alibaba/android/arouter/launcher/_ARouter;->executor:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static setLogger(Lcom/alibaba/android/arouter/facade/template/ILogger;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 162
    sput-object p0, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    :cond_0
    return-void
.end method

.method private startActivity(ILandroid/content/Context;Landroid/content/Intent;Lcom/alibaba/android/arouter/facade/Postcard;Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;)V
    .locals 2

    if-ltz p1, :cond_1

    .line 428
    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 429
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p4}, Lcom/alibaba/android/arouter/facade/Postcard;->getOptionsBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, p3, p1, v1}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 431
    :cond_0
    sget-object p1, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string p3, "ARouter::"

    const-string v0, "Must use [navigation(activity, ...)] to support [startActivityForResult]"

    invoke-interface {p1, p3, v0}, Lcom/alibaba/android/arouter/facade/template/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_1
    invoke-virtual {p4}, Lcom/alibaba/android/arouter/facade/Postcard;->getOptionsBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p2, p3, p1}, Landroidx/core/app/ActivityCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 437
    :goto_0
    invoke-virtual {p4}, Lcom/alibaba/android/arouter/facade/Postcard;->getEnterAnim()I

    move-result p1

    const/4 p3, -0x1

    if-eq p3, p1, :cond_2

    invoke-virtual {p4}, Lcom/alibaba/android/arouter/facade/Postcard;->getExitAnim()I

    move-result p1

    if-eq p3, p1, :cond_2

    instance-of p1, p2, Landroid/app/Activity;

    if-eqz p1, :cond_2

    .line 438
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p4}, Lcom/alibaba/android/arouter/facade/Postcard;->getEnterAnim()I

    move-result p1

    invoke-virtual {p4}, Lcom/alibaba/android/arouter/facade/Postcard;->getExitAnim()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2
    if-eqz p5, :cond_3

    .line 442
    invoke-interface {p5, p4}, Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;->onArrival(Lcom/alibaba/android/arouter/facade/Postcard;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected build(Landroid/net/Uri;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 4

    if-eqz p1, :cond_1

    .line 192
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/arouter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->navigation(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0, p1}, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;->forUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 199
    :cond_0
    new-instance v0, Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/arouter/launcher/_ARouter;->extractGroup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/alibaba/android/arouter/facade/Postcard;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-object v0

    .line 193
    :cond_1
    new-instance p1, Lcom/alibaba/android/arouter/exception/HandlerException;

    const-string v0, "ARouter::Parameter invalid!"

    invoke-direct {p1, v0}, Lcom/alibaba/android/arouter/exception/HandlerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 2

    .line 177
    invoke-static {p1}, Lcom/alibaba/android/arouter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->navigation(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0, p1}, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;->forString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/arouter/launcher/_ARouter;->extractGroup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/arouter/launcher/_ARouter;->build(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    return-object p1

    .line 178
    :cond_1
    new-instance p1, Lcom/alibaba/android/arouter/exception/HandlerException;

    const-string v0, "ARouter::Parameter is invalid!"

    invoke-direct {p1, v0}, Lcom/alibaba/android/arouter/exception/HandlerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected build(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 2

    .line 207
    invoke-static {p1}, Lcom/alibaba/android/arouter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/alibaba/android/arouter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->navigation(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;

    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0, p1}, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;->forString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 214
    :cond_0
    new-instance v0, Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/android/arouter/facade/Postcard;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 208
    :cond_1
    new-instance p1, Lcom/alibaba/android/arouter/exception/HandlerException;

    const-string p2, "ARouter::Parameter is invalid!"

    invoke-direct {p1, p2}, Lcom/alibaba/android/arouter/exception/HandlerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected navigation(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;
    .locals 9

    .line 276
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/arouter/facade/service/PretreatmentService;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->navigation(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/arouter/facade/service/PretreatmentService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/arouter/facade/service/PretreatmentService;->onPretreatment(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 283
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->completion(Lcom/alibaba/android/arouter/facade/Postcard;)V
    :try_end_0
    .catch Lcom/alibaba/android/arouter/exception/NoRouteFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p4, :cond_1

    .line 313
    invoke-interface {p4, p2}, Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;->onFound(Lcom/alibaba/android/arouter/facade/Postcard;)V

    .line 316
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->isGreenChannel()Z

    move-result v0

    if-nez v0, :cond_2

    .line 317
    sget-object v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->interceptorService:Lcom/alibaba/android/arouter/facade/service/InterceptorService;

    new-instance v8, Lcom/alibaba/android/arouter/launcher/_ARouter$2;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/android/arouter/launcher/_ARouter$2;-><init>(Lcom/alibaba/android/arouter/launcher/_ARouter;Landroid/content/Context;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;Lcom/alibaba/android/arouter/facade/Postcard;)V

    invoke-interface {v0, p2, v8}, Lcom/alibaba/android/arouter/facade/service/InterceptorService;->doInterceptions(Lcom/alibaba/android/arouter/facade/Postcard;Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;)V

    return-object v1

    .line 343
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/arouter/launcher/_ARouter;->_navigation(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p3

    .line 285
    sget-object v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    invoke-virtual {p3}, Lcom/alibaba/android/arouter/exception/NoRouteFoundException;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v2, "ARouter::"

    invoke-interface {v0, v2, p3}, Lcom/alibaba/android/arouter/facade/template/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/_ARouter;->debuggable()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 289
    new-instance p3, Lcom/alibaba/android/arouter/launcher/_ARouter$1;

    invoke-direct {p3, p0, p2}, Lcom/alibaba/android/arouter/launcher/_ARouter$1;-><init>(Lcom/alibaba/android/arouter/launcher/_ARouter;Lcom/alibaba/android/arouter/facade/Postcard;)V

    invoke-direct {p0, p3}, Lcom/alibaba/android/arouter/launcher/_ARouter;->runInMainThread(Ljava/lang/Runnable;)V

    :cond_3
    if-eqz p4, :cond_4

    .line 300
    invoke-interface {p4, p2}, Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;->onLost(Lcom/alibaba/android/arouter/facade/Postcard;)V

    goto :goto_0

    .line 303
    :cond_4
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p3

    const-class p4, Lcom/alibaba/android/arouter/facade/service/DegradeService;

    invoke-virtual {p3, p4}, Lcom/alibaba/android/arouter/launcher/ARouter;->navigation(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/android/arouter/facade/service/DegradeService;

    if-eqz p3, :cond_5

    .line 305
    invoke-interface {p3, p1, p2}, Lcom/alibaba/android/arouter/facade/service/DegradeService;->onLost(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;)V

    :cond_5
    :goto_0
    return-object v1
.end method

.method protected navigation(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 246
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->buildProvider(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v1

    if-nez v1, :cond_0

    .line 252
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->buildProvider(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    return-object v0

    .line 259
    :cond_1
    invoke-static {v1}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->completion(Lcom/alibaba/android/arouter/facade/Postcard;)V

    .line 260
    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/Postcard;->getProvider()Lcom/alibaba/android/arouter/facade/template/IProvider;

    move-result-object p1
    :try_end_0
    .catch Lcom/alibaba/android/arouter/exception/NoRouteFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 262
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/exception/NoRouteFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ARouter::"

    invoke-interface {v1, v2, p1}, Lcom/alibaba/android/arouter/facade/template/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
