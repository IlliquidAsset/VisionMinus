.class public abstract Lorg/xutils/http/BaseParams;
.super Ljava/lang/Object;
.source "BaseParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/http/BaseParams$BodyItemWrapper;,
        Lorg/xutils/http/BaseParams$Header;,
        Lorg/xutils/http/BaseParams$ArrayItem;
    }
.end annotation


# instance fields
.field private asJsonArrayContent:Z

.field private asJsonContent:Z

.field private bodyContent:Ljava/lang/String;

.field private bodyContentType:Ljava/lang/String;

.field private final bodyParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private charset:Ljava/lang/String;

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xutils/http/BaseParams$Header;",
            ">;"
        }
    .end annotation
.end field

.field private method:Lorg/xutils/http/HttpMethod;

.field private multipart:Z

.field private final queryStringParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private requestBody:Lorg/xutils/http/body/RequestBody;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    .line 35
    iput-object v0, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/xutils/http/BaseParams;->multipart:Z

    .line 40
    iput-boolean v0, p0, Lorg/xutils/http/BaseParams;->asJsonContent:Z

    .line 41
    iput-boolean v0, p0, Lorg/xutils/http/BaseParams;->asJsonArrayContent:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xutils/http/BaseParams;->headers:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized checkBodyParams()V
    .locals 3

    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 398
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->requestBody:Lorg/xutils/http/body/RequestBody;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/xutils/http/BaseParams;->method:Lorg/xutils/http/HttpMethod;

    invoke-static {v0}, Lorg/xutils/http/HttpMethod;->permitsRequestBody(Lorg/xutils/http/HttpMethod;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 404
    :cond_1
    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->asJsonContent:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->asJsonArrayContent:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 411
    :cond_2
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 412
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 413
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 406
    :try_start_2
    invoke-direct {p0, v0}, Lorg/xutils/http/BaseParams;->toJSONString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 409
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 399
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 400
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 401
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private params2Json(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 418
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 419
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 420
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 421
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xutils/common/util/KeyValue;

    .line 422
    iget-object v5, v4, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    .line 423
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 426
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 427
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    goto :goto_1

    .line 429
    :cond_1
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 430
    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :goto_1
    iget-object v7, v4, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-static {v7}, Lorg/xutils/http/RequestParamsHelper;->parseJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 435
    instance-of v4, v4, Lorg/xutils/http/BaseParams$ArrayItem;

    if-eqz v4, :cond_2

    .line 436
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 440
    :cond_3
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 441
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 442
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 443
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    .line 446
    :cond_4
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 447
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 444
    :cond_5
    :goto_4
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_6
    return-void
.end method

.method private toJSONString(Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 456
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    new-instance v1, Lorg/json/JSONArray;

    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 459
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 460
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 461
    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p1, "only contains bodyContent"

    .line 463
    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 467
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 468
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 471
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 475
    iget-boolean v2, p0, Lorg/xutils/http/BaseParams;->asJsonArrayContent:Z

    if-eqz v2, :cond_4

    .line 476
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 477
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    .line 482
    new-instance p1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 483
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 484
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 485
    invoke-direct {p0, v0, p1}, Lorg/xutils/http/BaseParams;->params2Json(Lorg/json/JSONObject;Ljava/util/List;)V

    goto :goto_1

    .line 487
    :cond_5
    iget-object p1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/xutils/http/BaseParams;->params2Json(Lorg/json/JSONObject;Ljava/util/List;)V

    :goto_1
    if-eqz v1, :cond_6

    .line 490
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method


# virtual methods
.method public addBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/xutils/http/BaseParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/xutils/http/BaseParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 205
    instance-of p3, p2, Ljava/lang/Iterable;

    if-eqz p3, :cond_1

    .line 206
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 207
    iget-object p4, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v0, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-direct {v0, p1, p3}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_1
    instance-of p3, p2, Lorg/json/JSONArray;

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    .line 210
    check-cast p2, Lorg/json/JSONArray;

    .line 211
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p3

    :goto_1
    if-ge p4, p3, :cond_6

    .line 213
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v1, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-virtual {p2, p4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 215
    :cond_2
    instance-of p3, p2, [B

    if-eqz p3, :cond_3

    .line 216
    iget-object p3, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance p4, Lorg/xutils/common/util/KeyValue;

    invoke-direct {p4, p1, p2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    .line 217
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->isArray()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 218
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    :goto_2
    if-ge p4, p3, :cond_6

    .line 220
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v1, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-static {p2, p4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 223
    :cond_4
    iget-object p3, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance p4, Lorg/xutils/common/util/KeyValue;

    invoke-direct {p4, p1, p2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 226
    :cond_5
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v1, Lorg/xutils/http/BaseParams$BodyItemWrapper;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/xutils/http/BaseParams$BodyItemWrapper;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->headers:Ljava/util/List;

    new-instance v1, Lorg/xutils/http/BaseParams$Header;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lorg/xutils/http/BaseParams$Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->method:Lorg/xutils/http/HttpMethod;

    invoke-static {v0}, Lorg/xutils/http/HttpMethod;->permitsRequestBody(Lorg/xutils/http/HttpMethod;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/xutils/http/BaseParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xutils/http/BaseParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public addQueryStringParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 153
    :cond_0
    instance-of v0, p2, Ljava/lang/Iterable;

    if-eqz v0, :cond_1

    .line 154
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    new-instance v2, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-direct {v2, p1, v0}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_1
    instance-of v0, p2, Lorg/json/JSONArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 158
    check-cast p2, Lorg/json/JSONArray;

    .line 159
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 161
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    new-instance v3, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 163
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 166
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    new-instance v3, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 169
    :cond_3
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    new-instance v1, Lorg/xutils/common/util/KeyValue;

    invoke-direct {v1, p1, p2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public clearParams()V
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 285
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    .line 287
    iput-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContentType:Ljava/lang/String;

    .line 288
    iput-object v0, p0, Lorg/xutils/http/BaseParams;->requestBody:Lorg/xutils/http/body/RequestBody;

    return-void
.end method

.method public getBodyContent()Ljava/lang/String;
    .locals 1

    .line 235
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;->checkBodyParams()V

    .line 236
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyParams()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation

    .line 262
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;->checkBodyParams()V

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xutils/http/BaseParams$Header;",
            ">;"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->headers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMethod()Lorg/xutils/http/HttpMethod;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->method:Lorg/xutils/http/HttpMethod;

    return-object v0
.end method

.method public getParams(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/common/util/KeyValue;

    if-eqz p1, :cond_0

    .line 269
    iget-object v3, v2, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_1
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/common/util/KeyValue;

    if-nez p1, :cond_3

    .line 274
    iget-object v3, v2, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 275
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_2

    .line 276
    iget-object v3, v2, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public getQueryStringParams()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation

    .line 257
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;->checkBodyParams()V

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRequestBody()Lorg/xutils/http/body/RequestBody;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;->checkBodyParams()V

    .line 322
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->requestBody:Lorg/xutils/http/body/RequestBody;

    if-eqz v0, :cond_0

    return-object v0

    .line 327
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    new-instance v0, Lorg/xutils/http/body/StringBody;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/xutils/http/body/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 330
    :cond_1
    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->multipart:Z

    if-eqz v0, :cond_2

    .line 331
    new-instance v0, Lorg/xutils/http/body/MultipartBody;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/xutils/http/body/MultipartBody;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    :cond_2
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 334
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 335
    iget-object v1, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    .line 336
    iget-object v2, v0, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 338
    instance-of v4, v0, Lorg/xutils/http/BaseParams$BodyItemWrapper;

    if-eqz v4, :cond_3

    .line 339
    move-object v3, v0

    check-cast v3, Lorg/xutils/http/BaseParams$BodyItemWrapper;

    .line 340
    iget-object v3, v3, Lorg/xutils/http/BaseParams$BodyItemWrapper;->contentType:Ljava/lang/String;

    .line 342
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 343
    iget-object v3, p0, Lorg/xutils/http/BaseParams;->bodyContentType:Ljava/lang/String;

    .line 345
    :cond_4
    instance-of v4, v2, Ljava/io/File;

    if-eqz v4, :cond_5

    .line 346
    new-instance v0, Lorg/xutils/http/body/FileBody;

    check-cast v2, Ljava/io/File;

    invoke-direct {v0, v2, v3}, Lorg/xutils/http/body/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_5
    instance-of v4, v2, Ljava/io/InputStream;

    if-eqz v4, :cond_6

    .line 348
    new-instance v0, Lorg/xutils/http/body/InputStreamBody;

    check-cast v2, Ljava/io/InputStream;

    invoke-direct {v0, v2, v3}, Lorg/xutils/http/body/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_6
    instance-of v4, v2, [B

    if-eqz v4, :cond_7

    .line 350
    new-instance v0, Lorg/xutils/http/body/InputStreamBody;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v3}, Lorg/xutils/http/body/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 353
    new-instance v1, Lorg/xutils/http/body/StringBody;

    invoke-virtual {v0}, Lorg/xutils/common/util/KeyValue;->getValueStrOrEmpty()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lorg/xutils/http/body/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-interface {v1, v3}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 356
    :cond_8
    new-instance v0, Lorg/xutils/http/body/UrlEncodedBody;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/xutils/http/body/UrlEncodedBody;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 357
    invoke-interface {v0, v3}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_9
    new-instance v0, Lorg/xutils/http/body/UrlEncodedBody;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/xutils/http/body/UrlEncodedBody;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public isAsJsonArrayContent()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->asJsonArrayContent:Z

    return v0
.end method

.method public isAsJsonContent()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->asJsonContent:Z

    return v0
.end method

.method public isMultipart()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->multipart:Z

    return v0
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 3

    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    .line 294
    iput-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContentType:Ljava/lang/String;

    goto :goto_1

    .line 296
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 297
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/common/util/KeyValue;

    .line 299
    iget-object v1, v1, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 305
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 306
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 307
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/common/util/KeyValue;

    if-nez p1, :cond_4

    .line 308
    iget-object v2, v1, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 309
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_3

    .line 310
    iget-object v1, v1, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 311
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public setAsJsonArrayContent(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lorg/xutils/http/BaseParams;->asJsonArrayContent:Z

    return-void
.end method

.method public setAsJsonContent(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lorg/xutils/http/BaseParams;->asJsonContent:Z

    return-void
.end method

.method public setBodyContent(Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    return-void
.end method

.method public setBodyContentType(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lorg/xutils/http/BaseParams;->bodyContentType:Ljava/lang/String;

    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iput-object p1, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    new-instance v0, Lorg/xutils/http/BaseParams$Header;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lorg/xutils/http/BaseParams$Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    iget-object p2, p0, Lorg/xutils/http/BaseParams;->headers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 112
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/common/util/KeyValue;

    .line 114
    iget-object v1, v1, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 118
    :cond_2
    iget-object p1, p0, Lorg/xutils/http/BaseParams;->headers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMethod(Lorg/xutils/http/HttpMethod;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/xutils/http/BaseParams;->method:Lorg/xutils/http/HttpMethod;

    return-void
.end method

.method public setMultipart(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lorg/xutils/http/BaseParams;->multipart:Z

    return-void
.end method

.method public setRequestBody(Lorg/xutils/http/body/RequestBody;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lorg/xutils/http/BaseParams;->requestBody:Lorg/xutils/http/body/RequestBody;

    return-void
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 369
    invoke-direct {p0, v0}, Lorg/xutils/http/BaseParams;->toJSONString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "&"

    const-string v3, "="

    if-nez v1, :cond_1

    .line 376
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xutils/common/util/KeyValue;

    .line 377
    iget-object v5, v4, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 382
    :cond_1
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, ">"

    const-string v5, "<"

    if-nez v1, :cond_2

    .line 383
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 384
    :cond_2
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 385
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xutils/common/util/KeyValue;

    .line 387
    iget-object v6, v5, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 389
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
