.class public Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;
.super Ljava/lang/Object;
.source "OSSRequestTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/sdk/android/oss/model/OSSResult;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private client:Lokhttp3/OkHttpClient;

.field private context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

.field private currentRetryCount:I

.field private message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

.field private responseParser:Lcom/alibaba/sdk/android/oss/internal/ResponseParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/oss/internal/ResponseParser<",
            "TT;>;"
        }
    .end annotation
.end field

.field private retryHandler:Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->currentRetryCount:I

    .line 59
    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->responseParser:Lcom/alibaba/sdk/android/oss/internal/ResponseParser;

    .line 60
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    .line 61
    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    .line 62
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getClient()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->client:Lokhttp3/OkHttpClient;

    .line 63
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;

    invoke-direct {p1, p4}, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;-><init>(I)V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->retryHandler:Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;

    return-void
.end method

.method private buildResponseMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lokhttp3/Response;)Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;
    .locals 5

    .line 279
    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;-><init>()V

    .line 280
    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->setRequest(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    .line 281
    invoke-virtual {v0, p2}, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->setResponse(Lokhttp3/Response;)V

    .line 282
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 283
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    const/4 v2, 0x0

    .line 284
    :goto_0
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 285
    invoke-virtual {v1, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->setHeaders(Ljava/util/Map;)V

    .line 288
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->setStatusCode(I)V

    .line 289
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->setContentLength(J)V

    .line 290
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->setContent(Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public call()Lcom/alibaba/sdk/android/oss/model/OSSResult;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "\n"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 76
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->buildBaseLogInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logInfo(Ljava/lang/String;)V

    :cond_0
    const-string v3, "[call] - "

    .line 79
    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object v3

    .line 84
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-static {v3, v4}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->ensureRequestValid(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    .line 86
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->signRequest(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    .line 88
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_12

    .line 92
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 97
    instance-of v5, v3, Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;

    if-eqz v5, :cond_1

    .line 98
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->buildOSSServiceURL()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 100
    :cond_1
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->buildCanonicalURL()Ljava/lang/String;

    move-result-object v5

    .line 102
    :goto_0
    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 105
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 106
    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    goto :goto_1

    .line 109
    :cond_2
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v6, "Content-Type"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request method = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 112
    sget-object v6, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$1;->$SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod:[I

    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x0

    if-eq v6, v1, :cond_6

    const/4 v8, 0x2

    if-eq v6, v8, :cond_6

    const/4 v5, 0x3

    if-eq v6, v5, :cond_5

    const/4 v5, 0x4

    if-eq v6, v5, :cond_4

    const/4 v5, 0x5

    if-eq v6, v5, :cond_3

    goto/16 :goto_5

    .line 159
    :cond_3
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->delete()Lokhttp3/Request$Builder;

    move-result-object v4

    goto/16 :goto_5

    .line 156
    :cond_4
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    move-result-object v4

    goto/16 :goto_5

    .line 153
    :cond_5
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v4

    goto/16 :goto_5

    :cond_6
    if-eqz v5, :cond_7

    const/4 v6, 0x1

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    :goto_2
    const-string v8, "Content type can\'t be null when upload!"

    .line 115
    invoke-static {v6, v8}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->assertTrue(ZLjava/lang/String;)V

    .line 119
    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadData()[B

    move-result-object v6

    const-wide/16 v8, 0x0

    if-eqz v6, :cond_8

    .line 120
    new-instance v6, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadData()[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 121
    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadData()[B

    move-result-object v8

    array-length v8, v8

    int-to-long v8, v8

    :goto_3
    move-wide v11, v8

    move-object v8, v2

    goto :goto_4

    .line 122
    :cond_8
    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadFilePath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 123
    new-instance v6, Ljava/io/File;

    iget-object v10, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v10}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 125
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v11

    cmp-long v6, v11, v8

    if-lez v6, :cond_9

    move-object v8, v2

    move-object v6, v10

    goto :goto_4

    .line 127
    :cond_9
    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string v3, "the length of file is 0!"

    invoke-direct {v0, v3}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_a
    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getContent()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 130
    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 131
    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getContentLength()J

    move-result-wide v8

    goto :goto_3

    .line 133
    :cond_b
    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getStringBody()Ljava/lang/String;

    move-result-object v6

    move-wide v11, v8

    move-object v8, v6

    move-object v6, v2

    :goto_4
    if-eqz v6, :cond_d

    .line 137
    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isCheckCRC64()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 138
    new-instance v8, Ljava/util/zip/CheckedInputStream;

    new-instance v9, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;

    invoke-direct {v9}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;-><init>()V

    invoke-direct {v8, v6, v9}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    move-object v6, v8

    .line 140
    :cond_c
    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v8, v6}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setContent(Ljava/io/InputStream;)V

    .line 141
    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v8, v11, v12}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setContentLength(J)V

    .line 142
    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    .line 143
    invoke-static {v6, v11, v12, v5, v9}, Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper;->addProgressRequestBody(Ljava/io/InputStream;JLjava/lang/String;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;

    move-result-object v5

    .line 142
    invoke-virtual {v4, v8, v5}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    goto :goto_5

    :cond_d
    if-eqz v8, :cond_e

    .line 145
    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v6

    .line 146
    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v5, v8}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v5

    .line 145
    invoke-virtual {v4, v6, v5}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    goto :goto_5

    .line 148
    :cond_e
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [B

    .line 149
    invoke-static {v2, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v6

    .line 148
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 165
    :goto_5
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 167
    :try_start_1
    instance-of v3, v3, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    if-eqz v3, :cond_f

    .line 168
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->client:Lokhttp3/OkHttpClient;

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-static {v3, v5}, Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper;->addProgressResponseListener(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lokhttp3/OkHttpClient;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->client:Lokhttp3/OkHttpClient;

    const-string v3, "getObject"

    .line 169
    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 172
    :cond_f
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    :try_start_2
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->setCall(Lokhttp3/Call;)V

    .line 177
    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v5

    .line 179
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->isEnableLog()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 181
    invoke-virtual {v5}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v6

    .line 182
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "response:---------------------\n"

    .line 183
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "response code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lokhttp3/Response;->code()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " for url: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 187
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "responseHeader ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 189
    :cond_10
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 193
    :cond_11
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {p0, v0, v5}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->buildResponseMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lokhttp3/Response;)Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v2

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v3, v2

    goto :goto_7

    .line 89
    :cond_12
    :try_start_3
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v3, "This task is cancelled!"

    invoke-direct {v0, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    move-object v3, v2

    move-object v4, v3

    .line 196
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encounter local execpiton: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->isEnableLog()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 198
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    :cond_13
    new-instance v5, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    :goto_8
    if-nez v5, :cond_15

    .line 203
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->getStatusCode()I

    move-result v6

    const/16 v7, 0xcb

    if-eq v6, v7, :cond_14

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->getStatusCode()I

    move-result v6

    const/16 v7, 0x12c

    if-lt v6, v7, :cond_15

    .line 204
    :cond_14
    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HEAD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseResponseErrorXML(Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;Z)Lcom/alibaba/sdk/android/oss/ServiceException;

    move-result-object v5

    goto :goto_9

    :cond_15
    if-nez v5, :cond_17

    .line 207
    :try_start_4
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->responseParser:Lcom/alibaba/sdk/android/oss/internal/ResponseParser;

    invoke-interface {v4, v0}, Lcom/alibaba/sdk/android/oss/internal/ResponseParser;->parse(Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;)Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v4

    .line 209
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v5, :cond_16

    .line 211
    :try_start_5
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_3
    :cond_16
    return-object v4

    :catch_4
    move-exception v4

    .line 218
    new-instance v5, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    :goto_9
    if-eqz v3, :cond_18

    .line 223
    invoke-interface {v3}, Lokhttp3/Call;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_19

    :cond_18
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    .line 224
    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 225
    :cond_19
    new-instance v3, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v5}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "Task is cancelled!"

    invoke-direct {v3, v6, v4, v5}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;)V

    move-object v5, v3

    .line 228
    :cond_1a
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->retryHandler:Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;

    iget v4, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->currentRetryCount:I

    invoke-virtual {v3, v5, v4}, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;->shouldRetry(Ljava/lang/Exception;I)Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    move-result-object v3

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[run] - retry, retry type: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;)V

    .line 230
    sget-object v4, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    if-ne v3, v4, :cond_1c

    .line 231
    iget v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->currentRetryCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->currentRetryCount:I

    .line 232
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRetryCallback()Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 233
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRetryCallback()Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;->onRetryCallback()V

    .line 237
    :cond_1b
    :try_start_6
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->retryHandler:Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;

    iget v1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->currentRetryCount:I

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;->timeInterval(ILcom/alibaba/sdk/android/oss/internal/OSSRetryType;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_a

    :catch_5
    move-exception v0

    .line 239
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 240
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 243
    :goto_a
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->call()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    return-object v0

    .line 244
    :cond_1c
    sget-object v4, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldFixedTimeSkewedAndRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    if-ne v3, v4, :cond_1f

    if-eqz v0, :cond_1d

    .line 247
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v2, "Date"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 250
    :try_start_7
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 251
    invoke-static {v3, v4}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->setCurrentServerTime(J)V

    .line 252
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_b

    .line 255
    :catch_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[error] - synchronize time, reponseDate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;)V

    .line 259
    :cond_1d
    :goto_b
    iget v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->currentRetryCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->currentRetryCount:I

    .line 260
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRetryCallback()Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 261
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRetryCallback()Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;->onRetryCallback()V

    .line 263
    :cond_1e
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->call()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    return-object v0

    .line 265
    :cond_1f
    instance-of v0, v5, Lcom/alibaba/sdk/android/oss/ClientException;

    if-eqz v0, :cond_20

    .line 266
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 267
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object v1

    move-object v3, v5

    check-cast v3, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    goto :goto_c

    .line 270
    :cond_20
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 271
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object v1

    move-object v3, v5

    check-cast v3, Lcom/alibaba/sdk/android/oss/ServiceException;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    .line 274
    :cond_21
    :goto_c
    throw v5
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->call()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    return-object v0
.end method
