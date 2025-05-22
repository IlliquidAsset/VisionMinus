.class public Lcom/mob/mobapm/proxy/okhttp2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/Callback;


# instance fields
.field private a:Lcom/squareup/okhttp/Callback;

.field private b:Lcom/mob/mobapm/core/Transaction;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Callback;Lcom/mob/mobapm/core/Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mob/mobapm/proxy/okhttp2/b;->a:Lcom/squareup/okhttp/Callback;

    .line 3
    iput-object p2, p0, Lcom/mob/mobapm/proxy/okhttp2/b;->b:Lcom/mob/mobapm/core/Transaction;

    return-void
.end method

.method private a(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/b;->b:Lcom/mob/mobapm/core/Transaction;

    invoke-virtual {v0}, Lcom/mob/mobapm/core/Transaction;->getTransStatus()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/b;->b:Lcom/mob/mobapm/core/Transaction;

    invoke-static {v0, p1}, Lcom/mob/mobapm/proxy/okhttp2/c;->a(Lcom/mob/mobapm/core/Transaction;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/b;->b:Lcom/mob/mobapm/core/Transaction;

    invoke-static {v0, p1}, Lcom/mob/mobapm/c/a;->a(Lcom/mob/mobapm/core/Transaction;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/mob/mobapm/proxy/okhttp2/b;->a(Ljava/lang/Exception;)V

    .line 2
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/b;->a:Lcom/squareup/okhttp/Callback;

    invoke-interface {v0, p1, p2}, Lcom/squareup/okhttp/Callback;->onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V

    return-void
.end method

.method public onResponse(Lcom/squareup/okhttp/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp2/b;->a:Lcom/squareup/okhttp/Callback;

    invoke-direct {p0, p1}, Lcom/mob/mobapm/proxy/okhttp2/b;->a(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/squareup/okhttp/Callback;->onResponse(Lcom/squareup/okhttp/Response;)V

    return-void
.end method
