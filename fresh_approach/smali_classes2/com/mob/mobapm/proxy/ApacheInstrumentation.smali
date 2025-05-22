.class public Lcom/mob/mobapm/proxy/ApacheInstrumentation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/proguard/ClassKeeper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static delegate(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/HttpRequest;
    .locals 0

    .line 2
    invoke-static {p2, p0, p1}, Lcom/mob/mobapm/proxy/d/b;->a(Lcom/mob/mobapm/core/Transaction;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method private static delegate(Lorg/apache/http/HttpResponse;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/HttpResponse;
    .locals 0

    .line 3
    invoke-static {p1, p0}, Lcom/mob/mobapm/proxy/d/b;->a(Lcom/mob/mobapm/core/Transaction;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method private static delegate(Lorg/apache/http/client/ResponseHandler;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/client/ResponseHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lcom/mob/mobapm/core/Transaction;",
            ")",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {p0, p1}, Lcom/mob/mobapm/proxy/d/c;->a(Lorg/apache/http/client/ResponseHandler;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/client/ResponseHandler;

    move-result-object p0

    return-object p0
.end method

.method private static delegate(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcom/mob/mobapm/proxy/d/b;->a(Lcom/mob/mobapm/core/Transaction;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 21
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    .line 22
    invoke-interface {p0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 25
    :cond_0
    new-instance v0, Lcom/mob/mobapm/core/Transaction;

    invoke-direct {v0}, Lcom/mob/mobapm/core/Transaction;-><init>()V

    .line 27
    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/mob/mobapm/proxy/ApacheInstrumentation;->delegate(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/HttpRequest;

    move-result-object p2

    invoke-static {p3, v0}, Lcom/mob/mobapm/proxy/ApacheInstrumentation;->delegate(Lorg/apache/http/client/ResponseHandler;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/client/ResponseHandler;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 29
    invoke-static {v0, p0}, Lcom/mob/mobapm/c/a;->a(Lcom/mob/mobapm/core/Transaction;Ljava/lang/Throwable;)V

    .line 30
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 11
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    .line 12
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 15
    :cond_0
    new-instance v0, Lcom/mob/mobapm/core/Transaction;

    invoke-direct {v0}, Lcom/mob/mobapm/core/Transaction;-><init>()V

    .line 17
    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/mob/mobapm/proxy/ApacheInstrumentation;->delegate(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/HttpRequest;

    move-result-object p2

    invoke-static {p3, v0}, Lcom/mob/mobapm/proxy/ApacheInstrumentation;->delegate(Lorg/apache/http/client/ResponseHandler;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/client/ResponseHandler;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, p0}, Lcom/mob/mobapm/c/a;->a(Lcom/mob/mobapm/core/Transaction;Ljava/lang/Throwable;)V

    .line 20
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 61
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    .line 62
    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 65
    :cond_0
    new-instance v0, Lcom/mob/mobapm/core/Transaction;

    invoke-direct {v0}, Lcom/mob/mobapm/core/Transaction;-><init>()V

    .line 67
    :try_start_0
    invoke-static {p1, v0}, Lcom/mob/mobapm/proxy/ApacheInstrumentation;->delegate(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p1

    invoke-static {p2, v0}, Lcom/mob/mobapm/proxy/ApacheInstrumentation;->delegate(Lorg/apache/http/client/ResponseHandler;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/client/ResponseHandler;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 69
    invoke-static {v0, p0}, Lcom/mob/mobapm/c/a;->a(Lcom/mob/mobapm/core/Transaction;Ljava/lang/Throwable;)V

    .line 70
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 51
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    .line 52
    invoke-interface {p0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 55
    :cond_0
    new-instance v0, Lcom/mob/mobapm/core/Transaction;

    invoke-direct {v0}, Lcom/mob/mobapm/core/Transaction;-><init>()V

    .line 57
    :try_start_0
    invoke-static {p1, v0}, Lcom/mob/mobapm/proxy/ApacheInstrumentation;->delegate(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p1

    invoke-static {p2, v0}, Lcom/mob/mobapm/proxy/ApacheInstrumentation;->delegate(Lorg/apache/http/client/ResponseHandler;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/client/ResponseHandler;

    move-result-object p2

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 59
    invoke-static {v0, p0}, Lcom/mob/mobapm/c/a;->a(Lcom/mob/mobapm/core/Transaction;Ljava/lang/Throwable;)V

    .line 60
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    .line 32
    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0

    .line 35
    :cond_0
    new-instance v0, Lcom/mob/mobapm/core/Transaction;

    invoke-direct {v0}, Lcom/mob/mobapm/core/Transaction;-><init>()V

    .line 37
    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/mob/mobapm/proxy/ApacheInstrumentation;->delegate(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/HttpRequest;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/mob/mobapm/proxy/ApacheInstrumentation;->delegate(Lorg/apache/http/HttpResponse;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/HttpResponse;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 39
    invoke-static {v0, p0}, Lcom/mob/mobapm/c/a;->a(Lcom/mob/mobapm/core/Transaction;Ljava/lang/Throwable;)V

    .line 40
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/mob/mobapm/core/Transaction;

    invoke-direct {v0}, Lcom/mob/mobapm/core/Transaction;-><init>()V

    .line 7
    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/mob/mobapm/proxy/ApacheInstrumentation;->delegate(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/HttpRequest;

    move-result-object p2

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/mob/mobapm/proxy/ApacheInstrumentation;->delegate(Lorg/apache/http/HttpResponse;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/HttpResponse;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    invoke-static {v0, p0}, Lcom/mob/mobapm/c/a;->a(Lcom/mob/mobapm/core/Transaction;Ljava/lang/Throwable;)V

    .line 10
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    .line 72
    invoke-interface {p0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0

    .line 75
    :cond_0
    new-instance v0, Lcom/mob/mobapm/core/Transaction;

    invoke-direct {v0}, Lcom/mob/mobapm/core/Transaction;-><init>()V

    .line 77
    :try_start_0
    invoke-static {p1, v0}, Lcom/mob/mobapm/proxy/ApacheInstrumentation;->delegate(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/mob/mobapm/proxy/ApacheInstrumentation;->delegate(Lorg/apache/http/HttpResponse;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/HttpResponse;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 79
    invoke-static {v0, p0}, Lcom/mob/mobapm/c/a;->a(Lcom/mob/mobapm/core/Transaction;Ljava/lang/Throwable;)V

    .line 80
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    .line 42
    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0

    .line 45
    :cond_0
    new-instance v0, Lcom/mob/mobapm/core/Transaction;

    invoke-direct {v0}, Lcom/mob/mobapm/core/Transaction;-><init>()V

    .line 47
    :try_start_0
    invoke-static {p1, v0}, Lcom/mob/mobapm/proxy/ApacheInstrumentation;->delegate(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/mob/mobapm/proxy/ApacheInstrumentation;->delegate(Lorg/apache/http/HttpResponse;Lcom/mob/mobapm/core/Transaction;)Lorg/apache/http/HttpResponse;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 49
    invoke-static {v0, p0}, Lcom/mob/mobapm/c/a;->a(Lcom/mob/mobapm/core/Transaction;Ljava/lang/Throwable;)V

    .line 50
    throw p0
.end method
