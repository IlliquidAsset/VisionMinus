.class public Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;
.super Lokhttp3/ResponseBody;
.source "DownloadResponseBody.java"


# instance fields
.field private mBufferedSource:Lokio/BufferedSource;

.field private mDownloadListener:Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;

.field private mResponseBody:Lokhttp3/ResponseBody;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;->mResponseBody:Lokhttp3/ResponseBody;

    .line 27
    iput-object p2, p0, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;->mDownloadListener:Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;)Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;->mDownloadListener:Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;

    return-object p0
.end method

.method private source(Lokio/Source;)Lokio/Source;
    .locals 1

    .line 49
    new-instance v0, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody$1;

    invoke-direct {v0, p0, p1}, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody$1;-><init>(Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;Lokio/Source;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;->mResponseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;->mResponseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;->mBufferedSource:Lokio/BufferedSource;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;->mResponseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;->source(Lokio/Source;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;->mBufferedSource:Lokio/BufferedSource;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;->mBufferedSource:Lokio/BufferedSource;

    return-object v0
.end method
