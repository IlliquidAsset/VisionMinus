.class Lcom/powervision/base/net/download/downlistener/DownloadResponseBody$1;
.super Lokio/ForwardingSource;
.source "DownloadResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;

.field totalBytesRead:J


# direct methods
.method constructor <init>(Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;Lokio/Source;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody$1;->this$0:Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    const-wide/16 p1, 0x0

    .line 50
    iput-wide p1, p0, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody$1;->totalBytesRead:J

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    .line 56
    iget-wide v0, p0, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody$1;->totalBytesRead:J

    const-wide/16 v2, -0x1

    cmp-long p3, p1, v2

    if-eqz p3, :cond_0

    move-wide v2, p1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody$1;->totalBytesRead:J

    .line 57
    iget-object v0, p0, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody$1;->this$0:Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;

    invoke-static {v0}, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;->access$000(Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;)Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody$1;->this$0:Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;

    invoke-static {v0}, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;->access$000(Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;)Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;

    move-result-object v1

    iget-wide v2, p0, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody$1;->totalBytesRead:J

    iget-object v0, p0, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody$1;->this$0:Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;

    invoke-virtual {v0}, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;->contentLength()J

    move-result-wide v4

    if-nez p3, :cond_1

    const/4 p3, 0x1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    const/4 v6, 0x0

    :goto_1
    invoke-interface/range {v1 .. v6}, Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;->update(JJZ)V

    :cond_2
    return-wide p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody$1;->this$0:Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;

    invoke-static {v0}, Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;->access$000(Lcom/powervision/base/net/download/downlistener/DownloadResponseBody;)Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;->onFailure(I)V

    .line 66
    invoke-super {p0}, Lokio/ForwardingSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
