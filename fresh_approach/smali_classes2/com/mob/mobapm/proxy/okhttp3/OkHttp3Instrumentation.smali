.class public Lcom/mob/mobapm/proxy/okhttp3/OkHttp3Instrumentation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/proguard/ClassKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/mobapm/proxy/okhttp3/OkHttp3Instrumentation$OkHttp35;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/mobapm/proxy/okhttp3/OkHttp3Instrumentation;->logReflectionError(Ljava/lang/String;)V

    return-void
.end method

.method public static body(Lokhttp3/Response$Builder;Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/mob/mobapm/proxy/okhttp3/e;

    invoke-direct {v0, p0}, Lcom/mob/mobapm/proxy/okhttp3/e;-><init>(Lokhttp3/Response$Builder;)V

    invoke-virtual {v0, p1}, Lcom/mob/mobapm/proxy/okhttp3/e;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static build(Lokhttp3/Request$Builder;)Lokhttp3/Request;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/mob/mobapm/proxy/okhttp3/d;

    invoke-direct {v0, p0}, Lcom/mob/mobapm/proxy/okhttp3/d;-><init>(Lokhttp3/Request$Builder;)V

    invoke-virtual {v0}, Lcom/mob/mobapm/proxy/okhttp3/d;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method private static logReflectionError(Ljava/lang/String;)V
    .locals 4

    const-string v0, "line.separator"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to resolve method \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "This is usually due to building the app with unsupported OkHttp versions."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Check your build configuration for compatibility."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method

.method public static newBuilder(Lokhttp3/Response$Builder;)Lokhttp3/Response$Builder;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/mob/mobapm/proxy/okhttp3/e;

    invoke-direct {v0, p0}, Lcom/mob/mobapm/proxy/okhttp3/e;-><init>(Lokhttp3/Response$Builder;)V

    return-object v0
.end method

.method public static newCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Call;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/mob/mobapm/core/Transaction;

    invoke-direct {v0}, Lcom/mob/mobapm/core/Transaction;-><init>()V

    .line 5
    new-instance v1, Lcom/mob/mobapm/proxy/okhttp3/a;

    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/mob/mobapm/proxy/okhttp3/a;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Lokhttp3/Call;Lcom/mob/mobapm/core/Transaction;)V

    return-object v1
.end method

.method public static open(Lokhttp3/OkUrlFactory;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lokhttp3/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 2
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance p1, Lcom/mob/mobapm/proxy/a;

    invoke-direct {p1, p0}, Lcom/mob/mobapm/proxy/a;-><init>(Ljava/net/HttpURLConnection;)V

    return-object p1

    :cond_1
    const-string v0, "https"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p1, :cond_2

    .line 11
    new-instance p1, Lcom/mob/mobapm/proxy/b;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {p1, p0}, Lcom/mob/mobapm/proxy/b;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    return-object p1

    .line 14
    :cond_2
    new-instance p1, Lcom/mob/mobapm/proxy/a;

    invoke-direct {p1, p0}, Lcom/mob/mobapm/proxy/a;-><init>(Ljava/net/HttpURLConnection;)V

    return-object p1
.end method
