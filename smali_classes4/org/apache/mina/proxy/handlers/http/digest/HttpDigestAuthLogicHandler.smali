.class public Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;
.super Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
.source "HttpDigestAuthLogicHandler.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;

.field private static rnd:Ljava/security/SecureRandom;


# instance fields
.field private directives:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private response:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const-class v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->logger:Lorg/slf4j/Logger;

    :try_start_0
    const-string v0, "SHA1PRNG"

    .line 68
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->rnd:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    .line 77
    iget-object p1, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    check-cast p1, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    const-string v0, "USER"

    const-string v1, "PWD"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->checkRequiredProperties([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .line 83
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->logger:Lorg/slf4j/Logger;

    const-string v1, " doHandshake()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->step:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v0, "Authentication challenge not received"

    invoke-direct {p1, v0}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    check-cast v0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    .line 90
    invoke-virtual {v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 93
    :goto_1
    iget v2, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->step:I

    const/4 v3, 0x1

    if-lez v2, :cond_e

    .line 94
    sget-object v2, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->logger:Lorg/slf4j/Logger;

    const-string v4, "  sending DIGEST challenge response"

    invoke-interface {v2, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 97
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 98
    invoke-virtual {v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v4

    const-string v5, "USER"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "username"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    const-string v5, "realm"

    invoke-static {v4, v2, v5}, Lorg/apache/mina/proxy/utils/StringUtilities;->copyDirective(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    const-string v5, "uri"

    invoke-static {v4, v2, v5}, Lorg/apache/mina/proxy/utils/StringUtilities;->copyDirective(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    const-string v6, "opaque"

    invoke-static {v4, v2, v6}, Lorg/apache/mina/proxy/utils/StringUtilities;->copyDirective(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    const-string v6, "nonce"

    invoke-static {v4, v2, v6}, Lorg/apache/mina/proxy/utils/StringUtilities;->copyDirective(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    const-string v6, "algorithm"

    invoke-static {v4, v2, v6}, Lorg/apache/mina/proxy/utils/StringUtilities;->copyDirective(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v6, "md5"

    .line 106
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "md5-sess"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 107
    :cond_3
    new-instance p1, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v0, "Unknown algorithm required by server"

    invoke-direct {p1, v0}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_4
    :goto_2
    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    const-string v11, "qop"

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 113
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v6, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 116
    :cond_5
    :goto_3
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 117
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    const-string v8, "auth"

    .line 118
    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    .line 122
    :cond_6
    sget-object v8, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->SUPPORTED_QOPS:[Ljava/lang/String;

    invoke-static {v8, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_5

    move-object v4, v7

    goto :goto_3

    :cond_7
    :goto_4
    if-eqz v4, :cond_8

    .line 129
    invoke-virtual {v2, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x8

    new-array v4, v4, [B

    .line 132
    sget-object v6, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v6, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 135
    :try_start_0
    new-instance v6, Ljava/lang/String;

    invoke-static {v4}, Lorg/apache/mina/util/Base64;->encodeBase64([B)[B

    move-result-object v4

    iget-object v7, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v7}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v4, "cnonce"

    .line 136
    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 138
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v1, "Unable to encode cnonce"

    invoke-direct {v0, v1, p1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 141
    :cond_8
    new-instance p1, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v0, "No supported qop option available"

    invoke-direct {p1, v0}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_5
    const-string v4, "nc"

    const-string v6, "00000001"

    .line 145
    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHttpURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    const-string v12, "response"

    .line 150
    iget-object v5, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v5}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v5

    .line 151
    invoke-virtual {v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHttpVerb()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v6

    const-string v8, "PWD"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 152
    invoke-virtual {v6}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v9

    iget-object v6, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->response:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v6}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getBody()Ljava/lang/String;

    move-result-object v10

    move-object v6, v2

    .line 150
    invoke-static/range {v5 .. v10}, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->computeResponseValue(Lorg/apache/mina/core/session/IoSession;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Digest "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 164
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v7, :cond_a

    const-string v10, ", "

    .line 167
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_a
    const/4 v7, 0x1

    .line 172
    :goto_7
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    const/4 v10, 0x1

    goto :goto_8

    :cond_b
    const/4 v10, 0x0

    .line 173
    :goto_8
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_c

    const-string v9, "=\""

    .line 176
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x22

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_c
    const/16 v9, 0x3d

    .line 178
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 182
    :cond_d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Proxy-Authorization"

    invoke-static {v1, v4, v2, v3}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    :catch_1
    move-exception p1

    .line 155
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v1, "Digest response computing failed"

    invoke-direct {v0, v1, p1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 185
    :cond_e
    :goto_9
    invoke-static {v1}, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->addKeepAliveHeaders(Ljava/util/Map;)V

    .line 186
    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->setHeaders(Ljava/util/Map;)V

    .line 188
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    .line 189
    iget p1, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->step:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->step:I

    return-void
.end method

.method public handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->response:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    .line 196
    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->step:I

    const-string v1, ")."

    const-string v2, "Received unexpected response code ("

    if-nez v0, :cond_5

    .line 197
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v0

    const/16 v3, 0x191

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v0

    const/16 v3, 0x197

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusLine()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Proxy-Authenticate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Digest"

    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    :cond_3
    if-eqz v0, :cond_4

    const/4 p1, 0x7

    .line 218
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 219
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/mina/proxy/utils/StringUtilities;->parseDirectives([B)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 223
    iput p1, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->step:I

    return-void

    :catch_0
    move-exception p1

    .line 221
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v1, "Parsing of server digest directives failed"

    invoke-direct {v0, v1, p1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 214
    :cond_4
    new-instance p1, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v0, "Server doesn\'t support digest authentication method !"

    invoke-direct {p1, v0}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_5
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusLine()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
