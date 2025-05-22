.class public Lcom/mob/mobapm/proxy/okhttp2/OkHttp2Instrumentation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/proguard/ClassKeeper;


# static fields
.field static final CACHED_RESPONSE_CLASS:Ljava/lang/String; = "com.squareup.okhttp.Cache$CacheResponseBody"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static body(Lcom/squareup/okhttp/Response$Builder;Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/mob/mobapm/proxy/okhttp2/f;

    invoke-direct {v0, p0}, Lcom/mob/mobapm/proxy/okhttp2/f;-><init>(Lcom/squareup/okhttp/Response$Builder;)V

    invoke-virtual {v0, p1}, Lcom/mob/mobapm/proxy/okhttp2/f;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static body(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/ResponseBody;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object p0

    return-object p0
.end method

.method public static build(Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/Request;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/mob/mobapm/proxy/okhttp2/e;

    invoke-direct {v0, p0}, Lcom/mob/mobapm/proxy/okhttp2/e;-><init>(Lcom/squareup/okhttp/Request$Builder;)V

    invoke-virtual {v0}, Lcom/mob/mobapm/proxy/okhttp2/e;->build()Lcom/squareup/okhttp/Request;

    move-result-object p0

    return-object p0
.end method

.method public static newBuilder(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/mob/mobapm/proxy/okhttp2/f;

    invoke-direct {v0, p0}, Lcom/mob/mobapm/proxy/okhttp2/f;-><init>(Lcom/squareup/okhttp/Response$Builder;)V

    return-object v0
.end method

.method public static newCall(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/mob/mobapm/core/Transaction;

    invoke-direct {v0}, Lcom/mob/mobapm/core/Transaction;-><init>()V

    .line 5
    new-instance v1, Lcom/mob/mobapm/proxy/okhttp2/a;

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/mob/mobapm/proxy/okhttp2/a;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Call;Lcom/mob/mobapm/core/Transaction;)V

    return-object v1
.end method

.method public static open(Lcom/squareup/okhttp/OkUrlFactory;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

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

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance p1, Lcom/mob/mobapm/proxy/a;

    invoke-direct {p1, p0}, Lcom/mob/mobapm/proxy/a;-><init>(Ljava/net/HttpURLConnection;)V

    return-object p1

    :cond_1
    const-string v0, "https"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    instance-of p1, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-nez p1, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    new-instance p1, Lcom/mob/mobapm/proxy/b;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {p1, p0}, Lcom/mob/mobapm/proxy/b;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    return-object p1

    .line 13
    :cond_3
    :goto_0
    new-instance p1, Lcom/mob/mobapm/proxy/a;

    invoke-direct {p1, p0}, Lcom/mob/mobapm/proxy/a;-><init>(Ljava/net/HttpURLConnection;)V

    return-object p1
.end method
