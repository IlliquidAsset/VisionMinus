.class public Lcom/mob/mobapm/proxy/okhttp3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Call;


# instance fields
.field private a:Lcom/mob/mobapm/core/Transaction;

.field private b:Lokhttp3/Request;

.field private c:Lokhttp3/Call;


# direct methods
.method constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Lokhttp3/Call;Lcom/mob/mobapm/core/Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/mob/mobapm/proxy/okhttp3/a;->b:Lokhttp3/Request;

    .line 4
    iput-object p3, p0, Lcom/mob/mobapm/proxy/okhttp3/a;->c:Lokhttp3/Call;

    .line 5
    iput-object p4, p0, Lcom/mob/mobapm/proxy/okhttp3/a;->a:Lcom/mob/mobapm/core/Transaction;

    return-void
.end method

.method private a(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/a;->a:Lcom/mob/mobapm/core/Transaction;

    invoke-virtual {v0}, Lcom/mob/mobapm/core/Transaction;->getTransStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/mob/mobapm/proxy/okhttp3/a;->b()Lcom/mob/mobapm/core/Transaction;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mob/mobapm/proxy/okhttp3/c;->a(Lcom/mob/mobapm/core/Transaction;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public a()Lokhttp3/Call;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/a;->c:Lokhttp3/Call;

    return-object v0
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/mob/mobapm/proxy/okhttp3/a;->b()Lcom/mob/mobapm/core/Transaction;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/mob/mobapm/c/a;->a(Lcom/mob/mobapm/core/Transaction;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected b()Lcom/mob/mobapm/core/Transaction;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/a;->a:Lcom/mob/mobapm/core/Transaction;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/mob/mobapm/core/Transaction;

    invoke-direct {v0}, Lcom/mob/mobapm/core/Transaction;-><init>()V

    iput-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/a;->a:Lcom/mob/mobapm/core/Transaction;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/a;->a:Lcom/mob/mobapm/core/Transaction;

    iget-object v1, p0, Lcom/mob/mobapm/proxy/okhttp3/a;->b:Lokhttp3/Request;

    invoke-static {v0, v1}, Lcom/mob/mobapm/proxy/okhttp3/c;->a(Lcom/mob/mobapm/core/Transaction;Lokhttp3/Request;)V

    .line 5
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/a;->a:Lcom/mob/mobapm/core/Transaction;

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/a;->c:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mob/mobapm/proxy/okhttp3/a;->clone()Lokhttp3/Call;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokhttp3/Call;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/a;->c:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->clone()Lokhttp3/Call;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lokhttp3/Callback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mob/mobapm/proxy/okhttp3/a;->b()Lcom/mob/mobapm/core/Transaction;

    .line 2
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/a;->c:Lokhttp3/Call;

    new-instance v1, Lcom/mob/mobapm/proxy/okhttp3/b;

    iget-object v2, p0, Lcom/mob/mobapm/proxy/okhttp3/a;->a:Lcom/mob/mobapm/core/Transaction;

    invoke-direct {v1, p1, v2}, Lcom/mob/mobapm/proxy/okhttp3/b;-><init>(Lokhttp3/Callback;Lcom/mob/mobapm/core/Transaction;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public execute()Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mob/mobapm/proxy/okhttp3/a;->b()Lcom/mob/mobapm/core/Transaction;

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/a;->c:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    invoke-direct {p0, v0}, Lcom/mob/mobapm/proxy/okhttp3/a;->a(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/mob/mobapm/proxy/okhttp3/a;->a(Ljava/lang/Exception;)V

    .line 12
    throw v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/a;->c:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isExecuted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public request()Lokhttp3/Request;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/a;->c:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/a;->c:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
