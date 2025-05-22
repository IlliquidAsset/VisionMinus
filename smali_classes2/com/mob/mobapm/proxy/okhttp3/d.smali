.class public Lcom/mob/mobapm/proxy/okhttp3/d;
.super Lokhttp3/Request$Builder;
.source "SourceFile"


# instance fields
.field private a:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>(Lokhttp3/Request$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mob/mobapm/proxy/okhttp3/d;->a:Lokhttp3/Request$Builder;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/d;->a:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lokhttp3/Request;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/d;->a:Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method public cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/d;->a:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public delete()Lokhttp3/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/d;->a:Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->delete()Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/d;->a:Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Lokhttp3/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/d;->a:Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/d;->a:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/d;->a:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/d;->a:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public patch(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/d;->a:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->patch(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/d;->a:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/d;->a:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/d;->a:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/d;->a:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/d;->a:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public url(Ljava/net/URL;)Lokhttp3/Request$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/d;->a:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method
