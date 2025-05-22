.class public abstract Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;
.super Lorg/apache/mina/proxy/AbstractProxyLogicHandler;
.source "AbstractHttpLogicHandler.java"


# static fields
.field private static final CRLF_DELIMITER:[B

.field private static final DECODER:Ljava/lang/String;

.field private static final HTTP_DELIMITER:[B

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private contentLength:I

.field private entityBodyLimitPosition:I

.field private entityBodyStartPosition:I

.field private hasChunkedData:Z

.field private parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

.field private responseData:Lorg/apache/mina/core/buffer/IoBuffer;

.field private waitingChunkedData:Z

.field private waitingFooters:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    const-class v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".Decoder"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->DECODER:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 53
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->HTTP_DELIMITER:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 55
    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->CRLF_DELIMITER:[B

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
        0xdt
        0xat
    .end array-data

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 67
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    const/4 p1, -0x1

    .line 72
    iput p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .line 48
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->writeRequest0(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    return-void
.end method

.method private reconnect(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V
    .locals 3

    .line 331
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Reconnecting to proxy ..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getConnector()Lorg/apache/mina/proxy/ProxyConnector;

    move-result-object v1

    new-instance v2, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;-><init>(Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;Lorg/apache/mina/proxy/session/ProxyIoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/ProxyConnector;->connect(Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;

    return-void
.end method

.method private writeRequest0(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V
    .locals 5

    .line 311
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->toHttpString()Ljava/lang/String;

    move-result-object p2

    .line 312
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->wrap([B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 314
    sget-object v1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "   write:\n{}"

    const-string v3, "\r"

    const-string v4, "\\r"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "\n"

    const-string v4, "\\n\n"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v2, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Unable to send HTTP request: "

    .line 319
    invoke-virtual {p0, p2, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected decodeResponse(Ljava/lang/String;)Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 362
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "  parseResponse()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const-string v0, "\r\n"

    .line 365
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 370
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 372
    array-length v3, v2

    const-string v5, "). Response: "

    if-lt v3, v4, :cond_2

    const/4 v3, 0x1

    .line 377
    aget-object v6, v2, v3

    const-string v7, "^\\d\\d\\d"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 381
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x1

    .line 383
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_0

    .line 384
    aget-object v6, v0, v5

    const-string v7, ":\\s?"

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 385
    aget-object v7, v6, v1

    aget-object v6, v6, v3

    invoke-static {p1, v7, v6, v1}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 388
    :cond_0
    new-instance v0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    aget-object v1, v2, v1

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0

    .line 378
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid response code ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid response status line ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation
.end method

.method public declared-synchronized messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    monitor-enter p0

    .line 118
    :try_start_0
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, " messageReceived()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->DECODER:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;

    sget-object v1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->HTTP_DELIMITER:[B

    invoke-direct {v0, v1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;-><init>([B)V

    .line 123
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    sget-object v2, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->DECODER:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    .line 129
    invoke-virtual {v0, p2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 131
    monitor-exit p0

    return-void

    .line 135
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v1

    .line 136
    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v4

    iput v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->entityBodyStartPosition:I

    .line 138
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "  response header received:\n{}"

    const-string v6, "\r"

    const-string v7, "\\r"

    .line 139
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, "\\n\n"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 138
    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p0, v1}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->decodeResponse(Ljava/lang/String;)Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    .line 145
    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v1

    const/16 v4, 0xc8

    if-eq v1, v4, :cond_4

    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    .line 146
    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v1

    const/16 v4, 0x12c

    if-lt v1, v4, :cond_2

    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v1

    const/16 v4, 0x133

    if-gt v1, v4, :cond_2

    goto :goto_0

    .line 152
    :cond_2
    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v4, "Content-Length"

    invoke-static {v1, v4}, Lorg/apache/mina/proxy/utils/StringUtilities;->getSingleValuedHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 156
    iput v3, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    goto :goto_1

    .line 158
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    .line 159
    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setContentLength(IZ)V

    goto :goto_1

    .line 147
    :cond_4
    :goto_0
    invoke-virtual {p2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 148
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->setHandshakeComplete()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 163
    :cond_5
    :goto_1
    :try_start_3
    iget-boolean v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->hasChunkedData:Z

    if-nez v1, :cond_8

    .line 164
    iget v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    if-lez v1, :cond_7

    .line 165
    invoke-virtual {v0, p2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_6

    .line 167
    monitor-exit p0

    return-void

    .line 169
    :cond_6
    :try_start_4
    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 170
    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 171
    iput v3, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    :cond_7
    const-string v1, "chunked"

    .line 174
    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v4}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Transfer-Encoding"

    invoke-static {v4, v5}, Lorg/apache/mina/proxy/utils/StringUtilities;->getSingleValuedHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 177
    sget-object v1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "Retrieving additional http response chunks"

    invoke-interface {v1, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 178
    iput-boolean v2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->hasChunkedData:Z

    .line 179
    iput-boolean v2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingChunkedData:Z

    .line 183
    :cond_8
    iget-boolean v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->hasChunkedData:Z

    if-eqz v1, :cond_11

    .line 185
    :goto_2
    iget-boolean v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingChunkedData:Z

    const/4 v4, 0x2

    if-eqz v1, :cond_e

    .line 186
    iget v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    if-nez v1, :cond_b

    .line 187
    sget-object v1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->CRLF_DELIMITER:[B

    invoke-virtual {v0, v1, v3}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setDelimiter([BZ)V

    .line 188
    invoke-virtual {v0, p2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_9

    .line 190
    monitor-exit p0

    return-void

    .line 193
    :cond_9
    :try_start_5
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x3b

    .line 194
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_a

    .line 196
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 198
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 200
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    if-lez v1, :cond_b

    add-int/lit8 v1, v1, 0x2

    .line 202
    iput v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    .line 203
    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setContentLength(IZ)V

    .line 207
    :cond_b
    iget v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    if-nez v1, :cond_c

    .line 208
    iput-boolean v3, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingChunkedData:Z

    .line 209
    iput-boolean v2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingFooters:Z

    .line 210
    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    iput v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->entityBodyLimitPosition:I

    goto :goto_4

    .line 214
    :cond_c
    invoke-virtual {v0, p2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_d

    .line 216
    monitor-exit p0

    return-void

    .line 218
    :cond_d
    :try_start_6
    iput v3, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    .line 219
    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 220
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto/16 :goto_2

    .line 224
    :cond_e
    :goto_4
    iget-boolean v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingFooters:Z

    if-eqz v1, :cond_11

    .line 225
    sget-object v1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->CRLF_DELIMITER:[B

    invoke-virtual {v0, v1, v3}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setDelimiter([BZ)V

    .line 226
    invoke-virtual {v0, p2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v1, :cond_f

    .line 228
    monitor-exit p0

    return-void

    .line 231
    :cond_f
    :try_start_7
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v5

    if-ne v5, v4, :cond_10

    .line 232
    iput-boolean v3, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingFooters:Z

    goto :goto_5

    .line 237
    :cond_10
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":\\s?"

    .line 238
    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 239
    iget-object v6, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v6}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v6

    aget-object v7, v5, v3

    aget-object v5, v5, v2

    invoke-static {v6, v7, v5, v3}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 240
    iget-object v5, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v5, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 241
    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    sget-object v5, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->CRLF_DELIMITER:[B

    invoke-virtual {v1, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_4

    .line 245
    :cond_11
    :goto_5
    iget-object p2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 247
    sget-object p2, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "  end of response received:\n{}"

    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 248
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v4

    .line 247
    invoke-interface {p2, v1, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    iget-object p2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    iget v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->entityBodyStartPosition:I

    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 252
    iget-object p2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    iget v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->entityBodyLimitPosition:I

    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 253
    iget-object p2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->setBody(Ljava/lang/String;)V

    .line 256
    iget-object p2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    const/4 p2, 0x0

    .line 257
    iput-object p2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 259
    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {p0, v1}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V

    .line 261
    iput-object p2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    .line 262
    iput-boolean v3, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->hasChunkedData:Z

    const/4 p2, -0x1

    .line 263
    iput p2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    .line 264
    sget-object p2, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->HTTP_DELIMITER:[B

    invoke-virtual {v0, p2, v2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setDelimiter([BZ)V

    .line 266
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->isHandshakeComplete()Z

    move-result p2

    if-nez p2, :cond_12

    .line 267
    invoke-virtual {p0, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 276
    :cond_12
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 270
    :try_start_8
    instance-of p2, p1, Lorg/apache/mina/proxy/ProxyAuthException;

    if-eqz p2, :cond_13

    .line 271
    check-cast p1, Lorg/apache/mina/proxy/ProxyAuthException;

    throw p1

    .line 274
    :cond_13
    new-instance p2, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v0, "Handshake failed"

    invoke-direct {p2, v0, p1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V
    .locals 1

    .line 294
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->isReconnectionNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->reconnect(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    goto :goto_0

    .line 299
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->writeRequest0(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    :goto_0
    return-void
.end method
