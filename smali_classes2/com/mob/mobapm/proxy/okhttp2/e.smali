.class public Lcom/mob/mobapm/proxy/okhttp2/e;
.super Lcom/squareup/okhttp/Request$Builder;
.source "SourceFile"


# instance fields
.field private a:Lcom/squareup/okhttp/Request$Builder;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Request$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mob/mobapm/proxy/okhttp2/e;->a:Lcom/squareup/okhttp/Request$Builder;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/e;->a:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/squareup/okhttp/Request;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/e;->a:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    return-object v0
.end method

.method public cacheControl(Lcom/squareup/okhttp/CacheControl;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/e;->a:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->cacheControl(Lcom/squareup/okhttp/CacheControl;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public delete()Lcom/squareup/okhttp/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/e;->a:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->delete()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public get()Lcom/squareup/okhttp/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/e;->a:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->get()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Lcom/squareup/okhttp/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/e;->a:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->head()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/e;->a:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/e;->a:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/e;->a:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public patch(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/e;->a:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->patch(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/e;->a:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/e;->a:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->put(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/e;->a:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public tag(Ljava/lang/Object;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/e;->a:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->tag(Ljava/lang/Object;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/e;->a:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public url(Ljava/net/URL;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/e;->a:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/net/URL;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object p1

    return-object p1
.end method
