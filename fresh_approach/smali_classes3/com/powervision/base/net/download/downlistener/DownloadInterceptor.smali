.class public Lcom/powervision/base/net/download/downlistener/DownloadInterceptor;
.super Ljava/lang/Object;
.source "DownloadInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private mDownloadListener:Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;


# direct methods
.method public constructor <init>(Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/powervision/base/net/download/downlistener/DownloadInterceptor;->mDownloadListener:Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    new-instance v1, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    iget-object v2, p0, Lcom/powervision/base/net/download/downlistener/DownloadInterceptor;->mDownloadListener:Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;

    invoke-direct {v1, p1, v2}, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;-><init>(Lokhttp3/ResponseBody;Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;)V

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
