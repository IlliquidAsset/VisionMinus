.class public Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;
.super Ljava/lang/Object;
.source "UtMissManager.java"


# static fields
.field private static final FORMAT_PARSE:Ljava/lang/String; = "application/json; charset=utf-8"

.field public static final MANUFACTURE_ID:Ljava/lang/String; = "9111010505555764XB"

.field private static final REQUEST_KEY:Ljava/lang/String; = "4104baff0f9kl0099914"

.field public static final REQUEST_TYPE:Ljava/lang/String; = "application/json"

.field private static final SIGNATURE_KEY:Ljava/lang/String; = "caacsri"

.field private static volatile UT_MISS_MANAGER:Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;


# instance fields
.field private mUtMissApi:Lcom/powervision/base/net/retrofit/utmiss/UtMissApi;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/powervision/base/config/Ap03GlobalConfig;->getUtMissUrl()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    invoke-static {}, Lcom/powervision/base/net/RetrofitUtil;->getInstance()Lcom/powervision/base/net/RetrofitUtil;

    move-result-object v1

    const-class v2, Lcom/powervision/base/net/retrofit/utmiss/UtMissApi;

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v0, v3}, Lcom/powervision/base/net/RetrofitUtil;->getService(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/net/retrofit/utmiss/UtMissApi;

    iput-object v0, p0, Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;->mUtMissApi:Lcom/powervision/base/net/retrofit/utmiss/UtMissApi;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;
    .locals 2

    .line 45
    sget-object v0, Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;->UT_MISS_MANAGER:Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;->UT_MISS_MANAGER:Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;

    invoke-direct {v1}, Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;-><init>()V

    sput-object v1, Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;->UT_MISS_MANAGER:Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 52
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;->UT_MISS_MANAGER:Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;

    return-object v0
.end method


# virtual methods
.method public getRequestData(Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 1

    const-string v0, "application/json; charset=utf-8"

    .line 92
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method public getRequestJson(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "key"

    const-string v2, "4104baff0f9kl0099914"

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 73
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 74
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p1, "paths"

    .line 78
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 82
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ut_miss_json-sig1-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "caacsri"

    .line 104
    invoke-static {v0, p1}, Lcom/powervision/base/utils/MD5Utils;->getHmMd5Data(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 106
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ut_miss_json-sig2-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public getUtMissApi()Lcom/powervision/base/net/retrofit/utmiss/UtMissApi;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/powervision/base/net/retrofit/utmiss/UtMissManager;->mUtMissApi:Lcom/powervision/base/net/retrofit/utmiss/UtMissApi;

    return-object v0
.end method
