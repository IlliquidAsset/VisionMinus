.class public Lcom/mob/mobapm/proxy/okhttp3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field private a:Lcom/mob/mobapm/core/Transaction;

.field private b:Lokhttp3/Callback;


# direct methods
.method public constructor <init>(Lokhttp3/Callback;Lcom/mob/mobapm/core/Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mob/mobapm/proxy/okhttp3/b;->b:Lokhttp3/Callback;

    .line 3
    iput-object p2, p0, Lcom/mob/mobapm/proxy/okhttp3/b;->a:Lcom/mob/mobapm/core/Transaction;

    return-void
.end method

.method private a(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/b;->a:Lcom/mob/mobapm/core/Transaction;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mob/mobapm/core/Transaction;->getTransStatus()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/b;->a:Lcom/mob/mobapm/core/Transaction;

    invoke-static {v0, p1}, Lcom/mob/mobapm/proxy/okhttp3/c;->a(Lcom/mob/mobapm/core/Transaction;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method protected a()Lcom/mob/mobapm/core/Transaction;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/b;->a:Lcom/mob/mobapm/core/Transaction;

    return-object v0
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/mob/mobapm/proxy/okhttp3/b;->a()Lcom/mob/mobapm/core/Transaction;

    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lcom/mob/mobapm/c/a;->a(Lcom/mob/mobapm/core/Transaction;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/mob/mobapm/proxy/okhttp3/b;->a(Ljava/lang/Exception;)V

    .line 2
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/b;->b:Lokhttp3/Callback;

    invoke-interface {v0, p1, p2}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/mob/mobapm/proxy/okhttp3/b;->a(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/mob/mobapm/proxy/okhttp3/b;->b:Lokhttp3/Callback;

    invoke-interface {v0, p1, p2}, Lokhttp3/Callback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V

    return-void
.end method
