.class public Lorg/xutils/http/RequestParams;
.super Lorg/xutils/http/BaseParams;
.source "RequestParams.java"


# static fields
.field private static final DEFAULT_REDIRECT_HANDLER:Lorg/xutils/http/app/DefaultRedirectHandler;

.field public static final MAX_FILE_LOAD_WORKER:I = 0xa


# instance fields
.field private autoRename:Z

.field private autoResume:Z

.field private buildCacheKey:Ljava/lang/String;

.field private buildUri:Ljava/lang/String;

.field private builder:Lorg/xutils/http/app/ParamsBuilder;

.field private cacheDirName:Ljava/lang/String;

.field private final cacheKeys:[Ljava/lang/String;

.field private cacheMaxAge:J

.field private cacheSize:J

.field private cancelFast:Z

.field private connectTimeout:I

.field private context:Landroid/content/Context;

.field private executor:Ljava/util/concurrent/Executor;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private httpRequest:Lorg/xutils/http/annotation/HttpRequest;

.field private httpRetryHandler:Lorg/xutils/http/app/HttpRetryHandler;

.field private invokedGetHttpRequest:Z

.field private loadingUpdateMaxTimeSpan:I

.field private maxRetryCount:I

.field private priority:Lorg/xutils/common/task/Priority;

.field private proxy:Ljava/net/Proxy;

.field private readTimeout:I

.field private redirectHandler:Lorg/xutils/http/app/RedirectHandler;

.field private requestTracker:Lorg/xutils/http/app/RequestTracker;

.field private saveFilePath:Ljava/lang/String;

.field private final signs:[Ljava/lang/String;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private uri:Ljava/lang/String;

.field private useCookie:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/xutils/http/app/DefaultRedirectHandler;

    invoke-direct {v0}, Lorg/xutils/http/app/DefaultRedirectHandler;-><init>()V

    sput-object v0, Lorg/xutils/http/RequestParams;->DEFAULT_REDIRECT_HANDLER:Lorg/xutils/http/app/DefaultRedirectHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0, v0, v0, v0}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;Lorg/xutils/http/app/ParamsBuilder;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;Lorg/xutils/http/app/ParamsBuilder;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xutils/http/app/ParamsBuilder;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lorg/xutils/http/RequestParams;->useCookie:Z

    .line 50
    sget-object v1, Lorg/xutils/common/task/Priority;->DEFAULT:Lorg/xutils/common/task/Priority;

    iput-object v1, p0, Lorg/xutils/http/RequestParams;->priority:Lorg/xutils/common/task/Priority;

    const/16 v1, 0x3a98

    .line 51
    iput v1, p0, Lorg/xutils/http/RequestParams;->connectTimeout:I

    .line 52
    iput v1, p0, Lorg/xutils/http/RequestParams;->readTimeout:I

    .line 53
    iput-boolean v0, p0, Lorg/xutils/http/RequestParams;->autoResume:Z

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lorg/xutils/http/RequestParams;->autoRename:Z

    const/4 v1, 0x2

    .line 55
    iput v1, p0, Lorg/xutils/http/RequestParams;->maxRetryCount:I

    .line 57
    iput-boolean v0, p0, Lorg/xutils/http/RequestParams;->cancelFast:Z

    const/16 v1, 0x12c

    .line 58
    iput v1, p0, Lorg/xutils/http/RequestParams;->loadingUpdateMaxTimeSpan:I

    .line 61
    sget-object v1, Lorg/xutils/http/RequestParams;->DEFAULT_REDIRECT_HANDLER:Lorg/xutils/http/app/DefaultRedirectHandler;

    iput-object v1, p0, Lorg/xutils/http/RequestParams;->redirectHandler:Lorg/xutils/http/app/RedirectHandler;

    .line 385
    iput-boolean v0, p0, Lorg/xutils/http/RequestParams;->invokedGetHttpRequest:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 85
    new-instance p2, Lorg/xutils/http/app/DefaultParamsBuilder;

    invoke-direct {p2}, Lorg/xutils/http/app/DefaultParamsBuilder;-><init>()V

    .line 87
    :cond_0
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->uri:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lorg/xutils/http/RequestParams;->signs:[Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lorg/xutils/http/RequestParams;->cacheKeys:[Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    .line 91
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/http/RequestParams;->context:Landroid/content/Context;

    return-void
.end method

.method private getHttpRequest()Lorg/xutils/http/annotation/HttpRequest;
    .locals 2

    .line 388
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->httpRequest:Lorg/xutils/http/annotation/HttpRequest;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->invokedGetHttpRequest:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 389
    iput-boolean v0, p0, Lorg/xutils/http/RequestParams;->invokedGetHttpRequest:Z

    .line 390
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 391
    const-class v1, Lorg/xutils/http/RequestParams;

    if-eq v0, v1, :cond_0

    .line 392
    const-class v1, Lorg/xutils/http/annotation/HttpRequest;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/annotation/HttpRequest;

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->httpRequest:Lorg/xutils/http/annotation/HttpRequest;

    .line 396
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->httpRequest:Lorg/xutils/http/annotation/HttpRequest;

    return-object v0
.end method

.method private initEntityParams()V
    .locals 2

    .line 377
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lorg/xutils/http/RequestParams$1;

    invoke-direct {v1, p0}, Lorg/xutils/http/RequestParams$1;-><init>(Lorg/xutils/http/RequestParams;)V

    invoke-static {p0, v0, v1}, Lorg/xutils/http/RequestParamsHelper;->parseKV(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/http/RequestParamsHelper$ParseKVListener;)V

    return-void
.end method


# virtual methods
.method public getCacheDirName()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->cacheDirName:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .line 138
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->buildCacheKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    if-eqz v0, :cond_1

    .line 139
    invoke-direct {p0}, Lorg/xutils/http/RequestParams;->getHttpRequest()Lorg/xutils/http/annotation/HttpRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v0}, Lorg/xutils/http/annotation/HttpRequest;->cacheKeys()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lorg/xutils/http/app/ParamsBuilder;->buildCacheKey(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->buildCacheKey:Ljava/lang/String;

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    iget-object v1, p0, Lorg/xutils/http/RequestParams;->cacheKeys:[Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lorg/xutils/http/app/ParamsBuilder;->buildCacheKey(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->buildCacheKey:Ljava/lang/String;

    .line 146
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->buildCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheMaxAge()J
    .locals 2

    .line 246
    iget-wide v0, p0, Lorg/xutils/http/RequestParams;->cacheMaxAge:J

    return-wide v0
.end method

.method public getCacheSize()J
    .locals 2

    .line 235
    iget-wide v0, p0, Lorg/xutils/http/RequestParams;->cacheSize:J

    return-wide v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 204
    iget v0, p0, Lorg/xutils/http/RequestParams;->connectTimeout:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getHttpRetryHandler()Lorg/xutils/http/app/HttpRetryHandler;
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->httpRetryHandler:Lorg/xutils/http/app/HttpRetryHandler;

    return-object v0
.end method

.method public getLoadingUpdateMaxTimeSpan()I
    .locals 1

    .line 339
    iget v0, p0, Lorg/xutils/http/RequestParams;->loadingUpdateMaxTimeSpan:I

    return v0
.end method

.method public getMaxRetryCount()I
    .locals 1

    .line 313
    iget v0, p0, Lorg/xutils/http/RequestParams;->maxRetryCount:I

    return v0
.end method

.method public getPriority()Lorg/xutils/common/task/Priority;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->priority:Lorg/xutils/common/task/Priority;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 214
    iget v0, p0, Lorg/xutils/http/RequestParams;->readTimeout:I

    return v0
.end method

.method public getRedirectHandler()Lorg/xutils/http/app/RedirectHandler;
    .locals 1

    .line 358
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->redirectHandler:Lorg/xutils/http/app/RedirectHandler;

    return-object v0
.end method

.method public getRequestTracker()Lorg/xutils/http/app/RequestTracker;
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->requestTracker:Lorg/xutils/http/app/RequestTracker;

    return-object v0
.end method

.method public getSaveFilePath()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->saveFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/http/RequestParams;->uri:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->uri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/xutils/http/RequestParams;->getHttpRequest()Lorg/xutils/http/annotation/HttpRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "uri is empty && @HttpRequest == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/xutils/http/RequestParams;->initEntityParams()V

    .line 106
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->uri:Ljava/lang/String;

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lorg/xutils/http/RequestParams;->getHttpRequest()Lorg/xutils/http/annotation/HttpRequest;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 109
    invoke-interface {v0}, Lorg/xutils/http/annotation/HttpRequest;->builder()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/http/app/ParamsBuilder;

    iput-object v1, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    .line 110
    invoke-interface {v1, p0, v0}, Lorg/xutils/http/app/ParamsBuilder;->buildUri(Lorg/xutils/http/RequestParams;Lorg/xutils/http/annotation/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v1, p0}, Lorg/xutils/http/app/ParamsBuilder;->buildParams(Lorg/xutils/http/RequestParams;)V

    .line 112
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v0}, Lorg/xutils/http/annotation/HttpRequest;->signs()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lorg/xutils/http/app/ParamsBuilder;->buildSign(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    .line 114
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v0}, Lorg/xutils/http/app/ParamsBuilder;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_1

    .line 116
    :cond_3
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    if-eqz v0, :cond_4

    .line 117
    invoke-interface {v0, p0}, Lorg/xutils/http/app/ParamsBuilder;->buildParams(Lorg/xutils/http/RequestParams;)V

    .line 118
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    iget-object v1, p0, Lorg/xutils/http/RequestParams;->signs:[Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lorg/xutils/http/app/ParamsBuilder;->buildSign(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    .line 120
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v0}, Lorg/xutils/http/app/ParamsBuilder;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    :cond_4
    :goto_1
    return-void
.end method

.method public isAutoRename()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->autoRename:Z

    return v0
.end method

.method public isAutoResume()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->autoResume:Z

    return v0
.end method

.method public isCancelFast()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->cancelFast:Z

    return v0
.end method

.method public isUseCookie()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->useCookie:Z

    return v0
.end method

.method public setAutoRename(Z)V
    .locals 0

    .line 295
    iput-boolean p1, p0, Lorg/xutils/http/RequestParams;->autoRename:Z

    return-void
.end method

.method public setAutoResume(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lorg/xutils/http/RequestParams;->autoResume:Z

    return-void
.end method

.method public setCacheDirName(Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->cacheDirName:Ljava/lang/String;

    return-void
.end method

.method public setCacheMaxAge(J)V
    .locals 0

    .line 253
    iput-wide p1, p0, Lorg/xutils/http/RequestParams;->cacheMaxAge:J

    return-void
.end method

.method public setCacheSize(J)V
    .locals 0

    .line 239
    iput-wide p1, p0, Lorg/xutils/http/RequestParams;->cacheSize:J

    return-void
.end method

.method public setCancelFast(Z)V
    .locals 0

    .line 335
    iput-boolean p1, p0, Lorg/xutils/http/RequestParams;->cancelFast:Z

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 209
    iput p1, p0, Lorg/xutils/http/RequestParams;->connectTimeout:I

    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->context:Landroid/content/Context;

    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public setHttpRetryHandler(Lorg/xutils/http/app/HttpRetryHandler;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->httpRetryHandler:Lorg/xutils/http/app/HttpRetryHandler;

    return-void
.end method

.method public setLoadingUpdateMaxTimeSpan(I)V
    .locals 0

    .line 346
    iput p1, p0, Lorg/xutils/http/RequestParams;->loadingUpdateMaxTimeSpan:I

    return-void
.end method

.method public setMaxRetryCount(I)V
    .locals 0

    .line 317
    iput p1, p0, Lorg/xutils/http/RequestParams;->maxRetryCount:I

    return-void
.end method

.method public setPriority(Lorg/xutils/common/task/Priority;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->priority:Lorg/xutils/common/task/Priority;

    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->proxy:Ljava/net/Proxy;

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 222
    iput p1, p0, Lorg/xutils/http/RequestParams;->readTimeout:I

    :cond_0
    return-void
.end method

.method public setRedirectHandler(Lorg/xutils/http/app/RedirectHandler;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->redirectHandler:Lorg/xutils/http/app/RedirectHandler;

    return-void
.end method

.method public setRequestTracker(Lorg/xutils/http/app/RequestTracker;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->requestTracker:Lorg/xutils/http/app/RequestTracker;

    return-void
.end method

.method public setSaveFilePath(Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->saveFilePath:Ljava/lang/String;

    return-void
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->uri:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_0
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setUseCookie(Z)V
    .locals 0

    .line 176
    iput-boolean p1, p0, Lorg/xutils/http/RequestParams;->useCookie:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 401
    invoke-virtual {p0}, Lorg/xutils/http/RequestParams;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    .line 405
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v3, "&"

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method
