.class public Lcom/alibaba/android/arouter/core/LogisticsCenter;
.super Ljava/lang/Object;
.source "LogisticsCenter.java"


# static fields
.field static executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static mContext:Landroid/content/Context;

.field private static registerByPlugin:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildProvider(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 2

    .line 219
    sget-object v0, Lcom/alibaba/android/arouter/core/Warehouse;->providersIndex:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 224
    :cond_0
    new-instance v0, Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->getGroup()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/alibaba/android/arouter/facade/Postcard;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized completion(Lcom/alibaba/android/arouter/facade/Postcard;)V
    .locals 12

    const-class v0, Lcom/alibaba/android/arouter/core/LogisticsCenter;

    monitor-enter v0

    if-eqz p0, :cond_a

    .line 238
    :try_start_0
    sget-object v1, Lcom/alibaba/android/arouter/core/Warehouse;->routes:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/arouter/facade/model/RouteMeta;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v1, :cond_3

    .line 240
    sget-object v1, Lcom/alibaba/android/arouter/core/Warehouse;->groupsIndex:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 246
    :try_start_1
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->debuggable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 247
    sget-object v5, Lcom/alibaba/android/arouter/launcher/ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v6, "ARouter::"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string v8, "The group [%s] starts loading, trigger by [%s]"

    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->getGroup()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->getPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alibaba/android/arouter/facade/template/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-array v5, v4, [Ljava/lang/Class;

    .line 250
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/arouter/facade/template/IRouteGroup;

    .line 251
    sget-object v5, Lcom/alibaba/android/arouter/core/Warehouse;->routes:Ljava/util/Map;

    invoke-interface {v1, v5}, Lcom/alibaba/android/arouter/facade/template/IRouteGroup;->loadInto(Ljava/util/Map;)V

    .line 252
    sget-object v1, Lcom/alibaba/android/arouter/core/Warehouse;->groupsIndex:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->debuggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    sget-object v1, Lcom/alibaba/android/arouter/launcher/ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v5, "ARouter::"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "The group [%s] has already been loaded, trigger by [%s]"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->getGroup()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v6, v7, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Lcom/alibaba/android/arouter/facade/template/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->completion(Lcom/alibaba/android/arouter/facade/Postcard;)V

    goto/16 :goto_2

    :catch_0
    move-exception p0

    .line 258
    new-instance v1, Lcom/alibaba/android/arouter/exception/HandlerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ARouter::Fatal exception when loading group meta. ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/alibaba/android/arouter/exception/HandlerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_2
    new-instance v1, Lcom/alibaba/android/arouter/exception/NoRouteFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ARouter::There is no route match the path ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], in group ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->getGroup()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/alibaba/android/arouter/exception/NoRouteFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->getDestination()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/alibaba/android/arouter/facade/Postcard;->setDestination(Ljava/lang/Class;)Lcom/alibaba/android/arouter/facade/model/RouteMeta;

    .line 265
    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->getType()Lcom/alibaba/android/arouter/facade/enums/RouteType;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/alibaba/android/arouter/facade/Postcard;->setType(Lcom/alibaba/android/arouter/facade/enums/RouteType;)Lcom/alibaba/android/arouter/facade/model/RouteMeta;

    .line 266
    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->getPriority()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/alibaba/android/arouter/facade/Postcard;->setPriority(I)Lcom/alibaba/android/arouter/facade/model/RouteMeta;

    .line 267
    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->getExtra()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/alibaba/android/arouter/facade/Postcard;->setExtra(I)Lcom/alibaba/android/arouter/facade/model/RouteMeta;

    .line 269
    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->getUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 271
    invoke-static {v5}, Lcom/alibaba/android/arouter/utils/TextUtils;->splitQueryParameters(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v6

    .line 272
    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->getParamsType()Ljava/util/Map;

    move-result-object v7

    .line 274
    invoke-static {v7}, Lcom/alibaba/android/arouter/utils/MapUtils;->isNotEmpty(Ljava/util/Map;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 276
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 278
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 279
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 280
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 277
    invoke-static {p0, v10, v11, v9}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->setValue(Lcom/alibaba/android/arouter/facade/Postcard;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v8, "wmHzgD4lOj5o4241"

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_5
    const-string v6, "NTeRQWvye18AkPd6G"

    .line 288
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v6, v5}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    .line 291
    :cond_6
    sget-object v5, Lcom/alibaba/android/arouter/core/LogisticsCenter$1;->$SwitchMap$com$alibaba$android$arouter$facade$enums$RouteType:[I

    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->getType()Lcom/alibaba/android/arouter/facade/enums/RouteType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/arouter/facade/enums/RouteType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v2, :cond_8

    if-eq v5, v3, :cond_7

    goto :goto_2

    .line 311
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->greenChannel()Lcom/alibaba/android/arouter/facade/Postcard;

    goto :goto_2

    .line 294
    :cond_8
    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->getDestination()Ljava/lang/Class;

    move-result-object v1

    .line 295
    sget-object v2, Lcom/alibaba/android/arouter/core/Warehouse;->providers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/arouter/facade/template/IProvider;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_9

    :try_start_3
    new-array v2, v4, [Ljava/lang/Class;

    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/arouter/facade/template/IProvider;

    .line 300
    sget-object v3, Lcom/alibaba/android/arouter/core/LogisticsCenter;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/alibaba/android/arouter/facade/template/IProvider;->init(Landroid/content/Context;)V

    .line 301
    sget-object v3, Lcom/alibaba/android/arouter/core/Warehouse;->providers:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 304
    :try_start_4
    new-instance v1, Lcom/alibaba/android/arouter/exception/HandlerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init provider failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/alibaba/android/arouter/exception/HandlerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 307
    :cond_9
    :goto_1
    invoke-virtual {p0, v2}, Lcom/alibaba/android/arouter/facade/Postcard;->setProvider(Lcom/alibaba/android/arouter/facade/template/IProvider;)Lcom/alibaba/android/arouter/facade/Postcard;

    .line 308
    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->greenChannel()Lcom/alibaba/android/arouter/facade/Postcard;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 316
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 235
    :cond_a
    :try_start_5
    new-instance p0, Lcom/alibaba/android/arouter/exception/NoRouteFoundException;

    const-string v1, "ARouter::No postcard!"

    invoke-direct {p0, v1}, Lcom/alibaba/android/arouter/exception/NoRouteFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/arouter/exception/HandlerException;
        }
    .end annotation

    const-class v0, Lcom/alibaba/android/arouter/core/LogisticsCenter;

    monitor-enter v0

    .line 153
    :try_start_0
    sput-object p0, Lcom/alibaba/android/arouter/core/LogisticsCenter;->mContext:Landroid/content/Context;

    .line 154
    sput-object p1, Lcom/alibaba/android/arouter/core/LogisticsCenter;->executor:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 160
    invoke-static {}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->loadRouterMap()V

    .line 161
    sget-boolean p1, Lcom/alibaba/android/arouter/core/LogisticsCenter;->registerByPlugin:Z

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 162
    sget-object p0, Lcom/alibaba/android/arouter/launcher/ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string p1, "ARouter::"

    const-string v4, "Load router map by arouter-auto-register plugin."

    invoke-interface {p0, p1, v4}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 167
    :cond_0
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->debuggable()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p0}, Lcom/alibaba/android/arouter/utils/PackageUtils;->isNewVersion(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    sget-object p1, Lcom/alibaba/android/arouter/launcher/ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v4, "ARouter::"

    const-string v5, "Load router map from cache."

    invoke-interface {p1, v4, v5}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance p1, Ljava/util/HashSet;

    const-string v4, "SP_AROUTER_CACHE"

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v4, "ROUTER_MAP"

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 168
    :cond_2
    :goto_0
    sget-object p1, Lcom/alibaba/android/arouter/launcher/ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v4, "ARouter::"

    const-string v5, "Run with debug mode or new install, rebuild router map."

    invoke-interface {p1, v4, v5}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object p1, Lcom/alibaba/android/arouter/core/LogisticsCenter;->mContext:Landroid/content/Context;

    const-string v4, "com.alibaba.android.arouter.routes"

    invoke-static {p1, v4}, Lcom/alibaba/android/arouter/utils/ClassUtils;->getFileNameByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 171
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "SP_AROUTER_CACHE"

    .line 172
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "ROUTER_MAP"

    invoke-interface {v4, v5, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    :cond_3
    invoke-static {p0}, Lcom/alibaba/android/arouter/utils/PackageUtils;->updateVersion(Landroid/content/Context;)V

    .line 181
    :goto_1
    sget-object p0, Lcom/alibaba/android/arouter/launcher/ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v4, "ARouter::"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Find router map finished, map size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", cost "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v4, v1}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 184
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v4, "com.alibaba.android.arouter.routes.ARouter$$Root"

    .line 185
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 187
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/arouter/facade/template/IRouteRoot;

    check-cast p1, Lcom/alibaba/android/arouter/facade/template/IRouteRoot;

    sget-object v4, Lcom/alibaba/android/arouter/core/Warehouse;->groupsIndex:Ljava/util/Map;

    invoke-interface {p1, v4}, Lcom/alibaba/android/arouter/facade/template/IRouteRoot;->loadInto(Ljava/util/Map;)V

    goto :goto_2

    :cond_5
    const-string v4, "com.alibaba.android.arouter.routes.ARouter$$Interceptors"

    .line 188
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 190
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/arouter/facade/template/IInterceptorGroup;

    check-cast p1, Lcom/alibaba/android/arouter/facade/template/IInterceptorGroup;

    sget-object v4, Lcom/alibaba/android/arouter/core/Warehouse;->interceptorsIndex:Ljava/util/Map;

    invoke-interface {p1, v4}, Lcom/alibaba/android/arouter/facade/template/IInterceptorGroup;->loadInto(Ljava/util/Map;)V

    goto :goto_2

    :cond_6
    const-string v4, "com.alibaba.android.arouter.routes.ARouter$$Providers"

    .line 191
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 193
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/arouter/facade/template/IProviderGroup;

    check-cast p1, Lcom/alibaba/android/arouter/facade/template/IProviderGroup;

    sget-object v4, Lcom/alibaba/android/arouter/core/Warehouse;->providersIndex:Ljava/util/Map;

    invoke-interface {p1, v4}, Lcom/alibaba/android/arouter/facade/template/IProviderGroup;->loadInto(Ljava/util/Map;)V

    goto :goto_2

    .line 198
    :cond_7
    :goto_3
    sget-object p0, Lcom/alibaba/android/arouter/launcher/ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string p1, "ARouter::"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load root element finished, cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object p0, Lcom/alibaba/android/arouter/core/Warehouse;->groupsIndex:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_8

    .line 201
    sget-object p0, Lcom/alibaba/android/arouter/launcher/ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string p1, "ARouter::"

    const-string v1, "No mapping files were found, check your configuration please!"

    invoke-interface {p0, p1, v1}, Lcom/alibaba/android/arouter/facade/template/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_8
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->debuggable()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 205
    sget-object p0, Lcom/alibaba/android/arouter/launcher/ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string p1, "ARouter::"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "LogisticsCenter has already been loaded, GroupIndex[%d], InterceptorIndex[%d], ProviderIndex[%d]"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/alibaba/android/arouter/core/Warehouse;->groupsIndex:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x1

    sget-object v5, Lcom/alibaba/android/arouter/core/Warehouse;->interceptorsIndex:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x2

    sget-object v5, Lcom/alibaba/android/arouter/core/Warehouse;->providersIndex:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Lcom/alibaba/android/arouter/facade/template/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :cond_9
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    .line 208
    :try_start_2
    new-instance p1, Lcom/alibaba/android/arouter/exception/HandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ARouter::ARouter init logistics center exception! ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/android/arouter/exception/HandlerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static loadRouterMap()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    sput-boolean v0, Lcom/alibaba/android/arouter/core/LogisticsCenter;->registerByPlugin:Z

    return-void
.end method

.method private static markRegisteredByPlugin()V
    .locals 1

    .line 144
    sget-boolean v0, Lcom/alibaba/android/arouter/core/LogisticsCenter;->registerByPlugin:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 145
    sput-boolean v0, Lcom/alibaba/android/arouter/core/LogisticsCenter;->registerByPlugin:Z

    :cond_0
    return-void
.end method

.method private static register(Ljava/lang/String;)V
    .locals 4

    const-string v0, "ARouter::"

    .line 79
    invoke-static {p0}, Lcom/alibaba/android/arouter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 81
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    instance-of v2, v1, Lcom/alibaba/android/arouter/facade/template/IRouteRoot;

    if-eqz v2, :cond_0

    .line 84
    check-cast v1, Lcom/alibaba/android/arouter/facade/template/IRouteRoot;

    invoke-static {v1}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->registerRouteRoot(Lcom/alibaba/android/arouter/facade/template/IRouteRoot;)V

    goto :goto_0

    .line 85
    :cond_0
    instance-of v2, v1, Lcom/alibaba/android/arouter/facade/template/IProviderGroup;

    if-eqz v2, :cond_1

    .line 86
    check-cast v1, Lcom/alibaba/android/arouter/facade/template/IProviderGroup;

    invoke-static {v1}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->registerProvider(Lcom/alibaba/android/arouter/facade/template/IProviderGroup;)V

    goto :goto_0

    .line 87
    :cond_1
    instance-of v2, v1, Lcom/alibaba/android/arouter/facade/template/IInterceptorGroup;

    if-eqz v2, :cond_2

    .line 88
    check-cast v1, Lcom/alibaba/android/arouter/facade/template/IInterceptorGroup;

    invoke-static {v1}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->registerInterceptor(Lcom/alibaba/android/arouter/facade/template/IInterceptorGroup;)V

    goto :goto_0

    .line 90
    :cond_2
    sget-object v1, Lcom/alibaba/android/arouter/launcher/ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register failed, class name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " should implements one of IRouteRoot/IProviderGroup/IInterceptorGroup."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    sget-object v1, Lcom/alibaba/android/arouter/launcher/ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register class error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Lcom/alibaba/android/arouter/facade/template/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static registerInterceptor(Lcom/alibaba/android/arouter/facade/template/IInterceptorGroup;)V
    .locals 1

    .line 119
    invoke-static {}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->markRegisteredByPlugin()V

    if-eqz p0, :cond_0

    .line 121
    sget-object v0, Lcom/alibaba/android/arouter/core/Warehouse;->interceptorsIndex:Ljava/util/Map;

    invoke-interface {p0, v0}, Lcom/alibaba/android/arouter/facade/template/IInterceptorGroup;->loadInto(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private static registerProvider(Lcom/alibaba/android/arouter/facade/template/IProviderGroup;)V
    .locals 1

    .line 132
    invoke-static {}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->markRegisteredByPlugin()V

    if-eqz p0, :cond_0

    .line 134
    sget-object v0, Lcom/alibaba/android/arouter/core/Warehouse;->providersIndex:Ljava/util/Map;

    invoke-interface {p0, v0}, Lcom/alibaba/android/arouter/facade/template/IProviderGroup;->loadInto(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private static registerRouteRoot(Lcom/alibaba/android/arouter/facade/template/IRouteRoot;)V
    .locals 1

    .line 106
    invoke-static {}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->markRegisteredByPlugin()V

    if-eqz p0, :cond_0

    .line 108
    sget-object v0, Lcom/alibaba/android/arouter/core/Warehouse;->groupsIndex:Ljava/util/Map;

    invoke-interface {p0, v0}, Lcom/alibaba/android/arouter/facade/template/IRouteRoot;->loadInto(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private static setValue(Lcom/alibaba/android/arouter/facade/Postcard;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 327
    invoke-static {p2}, Lcom/alibaba/android/arouter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p3}, Lcom/alibaba/android/arouter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_b

    .line 333
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->BOOLEAN:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 334
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->withBoolean(Ljava/lang/String;Z)Lcom/alibaba/android/arouter/facade/Postcard;

    goto/16 :goto_0

    .line 335
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->BYTE:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 336
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->withByte(Ljava/lang/String;B)Lcom/alibaba/android/arouter/facade/Postcard;

    goto/16 :goto_0

    .line 337
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->SHORT:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 338
    invoke-static {p3}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->withShort(Ljava/lang/String;S)Lcom/alibaba/android/arouter/facade/Postcard;

    goto/16 :goto_0

    .line 339
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->INT:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 340
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->withInt(Ljava/lang/String;I)Lcom/alibaba/android/arouter/facade/Postcard;

    goto/16 :goto_0

    .line 341
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->LONG:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 342
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/alibaba/android/arouter/facade/Postcard;->withLong(Ljava/lang/String;J)Lcom/alibaba/android/arouter/facade/Postcard;

    goto/16 :goto_0

    .line 343
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->FLOAT:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 344
    invoke-static {p3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->withFloat(Ljava/lang/String;F)Lcom/alibaba/android/arouter/facade/Postcard;

    goto :goto_0

    .line 345
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->DOUBLE:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 346
    invoke-static {p3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/alibaba/android/arouter/facade/Postcard;->withDouble(Ljava/lang/String;D)Lcom/alibaba/android/arouter/facade/Postcard;

    goto :goto_0

    .line 347
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->STRING:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 348
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    goto :goto_0

    .line 349
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->PARCELABLE:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_9

    goto :goto_0

    .line 351
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->OBJECT:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 352
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    goto :goto_0

    .line 354
    :cond_a
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    goto :goto_0

    .line 357
    :cond_b
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 360
    sget-object p1, Lcom/alibaba/android/arouter/launcher/ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "LogisticsCenter setValue failed! "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ARouter::"

    invoke-interface {p1, p2, p0}, Lcom/alibaba/android/arouter/facade/template/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_0
    return-void
.end method

.method public static suspend()V
    .locals 0

    .line 368
    invoke-static {}, Lcom/alibaba/android/arouter/core/Warehouse;->clear()V

    return-void
.end method
