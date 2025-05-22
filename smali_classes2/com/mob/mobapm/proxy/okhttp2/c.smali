.class public Lcom/mob/mobapm/proxy/okhttp2/c;
.super Lcom/mob/mobapm/c/a;
.source "SourceFile"


# direct methods
.method public static a(Lcom/mob/mobapm/core/Transaction;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .locals 7

    .line 12
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM: OkHttp2 request end, transaction switch is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mob/mobapm/core/c;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 13
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-eqz v0, :cond_5

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->isCreate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/16 v1, 0x1f4

    goto :goto_2

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_3

    .line 25
    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3

    const-wide/32 v4, 0x7fffffff

    invoke-static {v3, v4, v5}, Lcom/mob/mobapm/proxy/okhttp2/d;->a(Lcom/squareup/okhttp/ResponseBody;J)Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    const-string v3, ""

    goto :goto_0

    .line 26
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    .line 27
    :goto_0
    invoke-virtual {p0, v3}, Lcom/mob/mobapm/core/Transaction;->setErrMsg(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 29
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APM: OkHttp2 request end error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 32
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 34
    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_4
    :goto_2
    invoke-static {p0, v0, v1}, Lcom/mob/mobapm/c/a;->a(Lcom/mob/mobapm/core/Transaction;Ljava/lang/String;I)V

    :cond_5
    :goto_3
    return-object p1
.end method

.method public static a(Lcom/mob/mobapm/core/Transaction;Lcom/squareup/okhttp/Request;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM: OkHttp2 request start, transaction switch is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mob/mobapm/core/c;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mob/mobapm/core/Transaction;->setMethod(Ljava/lang/String;)V

    .line 11
    invoke-static {v2}, Lcom/mob/mobapm/bean/TransactionType;->valueOf(Ljava/lang/String;)Lcom/mob/mobapm/bean/TransactionType;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lcom/mob/mobapm/c/a;->a(Lcom/mob/mobapm/core/Transaction;Ljava/lang/String;Ljava/lang/String;Lcom/mob/mobapm/bean/TransactionType;)V

    :cond_1
    :goto_0
    return-void
.end method
