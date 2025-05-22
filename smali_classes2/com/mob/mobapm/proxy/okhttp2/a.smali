.class public Lcom/mob/mobapm/proxy/okhttp2/a;
.super Lcom/squareup/okhttp/Call;
.source "SourceFile"


# instance fields
.field private a:Lcom/squareup/okhttp/Call;

.field private b:Lcom/squareup/okhttp/Request;

.field private c:Lcom/mob/mobapm/core/Transaction;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Call;Lcom/mob/mobapm/core/Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/Call;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)V

    .line 3
    iput-object p2, p0, Lcom/mob/mobapm/proxy/okhttp2/a;->b:Lcom/squareup/okhttp/Request;

    .line 4
    iput-object p3, p0, Lcom/mob/mobapm/proxy/okhttp2/a;->a:Lcom/squareup/okhttp/Call;

    .line 5
    iput-object p4, p0, Lcom/mob/mobapm/proxy/okhttp2/a;->c:Lcom/mob/mobapm/core/Transaction;

    return-void
.end method

.method private a(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/a;->c:Lcom/mob/mobapm/core/Transaction;

    invoke-virtual {v0}, Lcom/mob/mobapm/core/Transaction;->getTransStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/mob/mobapm/proxy/okhttp2/a;->a()Lcom/mob/mobapm/core/Transaction;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mob/mobapm/proxy/okhttp2/c;->a(Lcom/mob/mobapm/core/Transaction;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public a()Lcom/mob/mobapm/core/Transaction;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/a;->c:Lcom/mob/mobapm/core/Transaction;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/mob/mobapm/core/Transaction;

    invoke-direct {v0}, Lcom/mob/mobapm/core/Transaction;-><init>()V

    iput-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/a;->c:Lcom/mob/mobapm/core/Transaction;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/a;->c:Lcom/mob/mobapm/core/Transaction;

    iget-object v1, p0, Lcom/mob/mobapm/proxy/okhttp2/a;->b:Lcom/squareup/okhttp/Request;

    invoke-static {v0, v1}, Lcom/mob/mobapm/proxy/okhttp2/c;->a(Lcom/mob/mobapm/core/Transaction;Lcom/squareup/okhttp/Request;)V

    .line 7
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/a;->c:Lcom/mob/mobapm/core/Transaction;

    return-object v0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/mob/mobapm/proxy/okhttp2/a;->a()Lcom/mob/mobapm/core/Transaction;

    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lcom/mob/mobapm/c/a;->a(Lcom/mob/mobapm/core/Transaction;Ljava/lang/Throwable;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/a;->a:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    return-void
.end method

.method public enqueue(Lcom/squareup/okhttp/Callback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mob/mobapm/proxy/okhttp2/a;->a()Lcom/mob/mobapm/core/Transaction;

    .line 2
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/a;->a:Lcom/squareup/okhttp/Call;

    new-instance v1, Lcom/mob/mobapm/proxy/okhttp2/b;

    iget-object v2, p0, Lcom/mob/mobapm/proxy/okhttp2/a;->c:Lcom/mob/mobapm/core/Transaction;

    invoke-direct {v1, p1, v2}, Lcom/mob/mobapm/proxy/okhttp2/b;-><init>(Lcom/squareup/okhttp/Callback;Lcom/mob/mobapm/core/Transaction;)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Call;->enqueue(Lcom/squareup/okhttp/Callback;)V

    return-void
.end method

.method public execute()Lcom/squareup/okhttp/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mob/mobapm/proxy/okhttp2/a;->a()Lcom/mob/mobapm/core/Transaction;

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/a;->a:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/mobapm/proxy/okhttp2/a;->a(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/mob/mobapm/proxy/okhttp2/a;->a(Ljava/lang/Exception;)V

    .line 6
    throw v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/a;->a:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->isCanceled()Z

    move-result v0

    return v0
.end method
