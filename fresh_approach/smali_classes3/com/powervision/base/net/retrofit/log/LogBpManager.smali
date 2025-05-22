.class public Lcom/powervision/base/net/retrofit/log/LogBpManager;
.super Ljava/lang/Object;
.source "LogBpManager.java"


# static fields
.field private static final FORMAT_PARSE:Ljava/lang/String; = "text/plain"

.field private static volatile LOG_BP_MANAGER:Lcom/powervision/base/net/retrofit/log/LogBpManager;


# instance fields
.field private mLogBpApi:Lcom/powervision/base/net/retrofit/log/LogBpApi;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/powervision/base/config/Ap03GlobalConfig;->getLogBuriedPointUrl()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    invoke-static {}, Lcom/powervision/base/net/RetrofitUtil;->getInstance()Lcom/powervision/base/net/RetrofitUtil;

    move-result-object v1

    const-class v2, Lcom/powervision/base/net/retrofit/log/LogBpApi;

    invoke-virtual {v1, v2, v0}, Lcom/powervision/base/net/RetrofitUtil;->getService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/net/retrofit/log/LogBpApi;

    iput-object v0, p0, Lcom/powervision/base/net/retrofit/log/LogBpManager;->mLogBpApi:Lcom/powervision/base/net/retrofit/log/LogBpApi;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/powervision/base/net/retrofit/log/LogBpManager;
    .locals 2

    .line 37
    sget-object v0, Lcom/powervision/base/net/retrofit/log/LogBpManager;->LOG_BP_MANAGER:Lcom/powervision/base/net/retrofit/log/LogBpManager;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcom/powervision/base/net/retrofit/log/LogBpManager;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/powervision/base/net/retrofit/log/LogBpManager;->LOG_BP_MANAGER:Lcom/powervision/base/net/retrofit/log/LogBpManager;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/powervision/base/net/retrofit/log/LogBpManager;

    invoke-direct {v1}, Lcom/powervision/base/net/retrofit/log/LogBpManager;-><init>()V

    sput-object v1, Lcom/powervision/base/net/retrofit/log/LogBpManager;->LOG_BP_MANAGER:Lcom/powervision/base/net/retrofit/log/LogBpManager;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/base/net/retrofit/log/LogBpManager;->LOG_BP_MANAGER:Lcom/powervision/base/net/retrofit/log/LogBpManager;

    return-object v0
.end method


# virtual methods
.method public getLogBpApi()Lcom/powervision/base/net/retrofit/log/LogBpApi;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/powervision/base/net/retrofit/log/LogBpManager;->mLogBpApi:Lcom/powervision/base/net/retrofit/log/LogBpApi;

    return-object v0
.end method

.method public getRequestData(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json-value-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "text/plain"

    .line 62
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    const-string v1, "params"

    .line 63
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
