.class public Lcom/mob/mobapm/proxy/okhttp3/OkHttp3Instrumentation$OkHttp35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/proguard/ClassKeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/mobapm/proxy/okhttp3/OkHttp3Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OkHttp35"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callEngineGetStreamAllocation(Lokhttp3/internal/Internal;Lokhttp3/Call;)Lokhttp3/internal/connection/StreamAllocation;
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    instance-of v1, p1, Lcom/mob/mobapm/proxy/okhttp3/a;

    if-eqz v1, :cond_0

    .line 2
    check-cast p1, Lcom/mob/mobapm/proxy/okhttp3/a;

    invoke-virtual {p1}, Lcom/mob/mobapm/proxy/okhttp3/a;->a()Lokhttp3/Call;

    move-result-object p1

    .line 5
    :cond_0
    const-class v1, Lokhttp3/internal/Internal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "callEngineGetStreamAllocation"

    const/4 v3, 0x1

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lokhttp3/Call;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 7
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/internal/connection/StreamAllocation;

    goto :goto_1

    :cond_1
    const-string p0, "callEngineGetStreamAllocation(Lokhttp3/Call;)Lokhttp3/internal/connection/StreamAllocation;"

    .line 9
    invoke-static {p0}, Lcom/mob/mobapm/proxy/okhttp3/OkHttp3Instrumentation;->access$000(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM: callEngineGetStreamAllocation error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static newWebSocketCall(Lokhttp3/internal/Internal;Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Call;
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Lokhttp3/internal/Internal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "newWebSocketCall"

    const/4 v3, 0x2

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lokhttp3/OkHttpClient;

    aput-object v5, v4, v0

    const-class v5, Lokhttp3/Request;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lcom/mob/mobapm/core/Transaction;

    invoke-direct {v2}, Lcom/mob/mobapm/core/Transaction;-><init>()V

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object p2, v3, v6

    .line 4
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/Call;

    .line 5
    new-instance v1, Lcom/mob/mobapm/proxy/okhttp3/a;

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/mob/mobapm/proxy/okhttp3/a;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Lokhttp3/Call;Lcom/mob/mobapm/core/Transaction;)V

    goto :goto_1

    :cond_0
    const-string p0, "newWebSocketCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Call;"

    .line 7
    invoke-static {p0}, Lcom/mob/mobapm/proxy/okhttp3/OkHttp3Instrumentation;->access$000(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APM: newWebSocketCall error: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public static setCallWebSocket(Lokhttp3/internal/Internal;Lokhttp3/Call;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    instance-of v1, p1, Lcom/mob/mobapm/proxy/okhttp3/a;

    if-eqz v1, :cond_0

    .line 2
    check-cast p1, Lcom/mob/mobapm/proxy/okhttp3/a;

    invoke-virtual {p1}, Lcom/mob/mobapm/proxy/okhttp3/a;->a()Lokhttp3/Call;

    move-result-object p1

    .line 5
    :cond_0
    const-class v1, Lokhttp3/internal/Internal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "setCallWebSocket"

    const/4 v3, 0x1

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lokhttp3/Call;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 7
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p0, "setCallWebSocket(Lokhttp3/Call;)V"

    .line 9
    invoke-static {p0}, Lcom/mob/mobapm/proxy/okhttp3/OkHttp3Instrumentation;->access$000(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM: set callwebsocket error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method
