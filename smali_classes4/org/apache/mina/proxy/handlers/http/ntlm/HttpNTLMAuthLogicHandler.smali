.class public Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;
.super Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
.source "HttpNTLMAuthLogicHandler.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private challengePacket:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->challengePacket:[B

    .line 63
    iget-object p1, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    check-cast p1, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    const-string v0, "USER"

    const-string v1, "PWD"

    const-string v2, "DOMAIN"

    const-string v3, "WORKSTATION"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->checkRequiredProperties([Ljava/lang/String;)V

    return-void
.end method

.method private getNTLMHeader(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)Ljava/lang/String;
    .locals 2

    .line 122
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Proxy-Authenticate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "NTLM"

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .line 73
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, " doHandshake()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 75
    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->challengePacket:[B

    if-eqz v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "NTLM Challenge packet not received"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    check-cast v0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    .line 80
    invoke-virtual {v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 83
    :goto_1
    invoke-virtual {v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v3, "DOMAIN"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 84
    invoke-virtual {v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v3, "WORKSTATION"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 86
    iget v2, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    const-string v10, "NTLM "

    const-string v11, "Proxy-Authorization"

    const/4 v12, 0x1

    if-lez v2, :cond_3

    .line 87
    sget-object v2, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "  sending NTLM challenge response"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->challengePacket:[B

    invoke-static {v2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->extractChallengeFromType2Message([B)[B

    move-result-object v5

    .line 90
    iget-object v2, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->challengePacket:[B

    invoke-static {v2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->extractFlagsFromType2Message([B)I

    move-result v2

    .line 92
    invoke-virtual {v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v3

    const-string v4, "USER"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 93
    invoke-virtual {v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v4

    const-string v8, "PWD"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    .line 95
    invoke-static/range {v3 .. v9}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->createType3Message(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)[B

    move-result-object v2

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    .line 99
    invoke-static {v2}, Lorg/apache/mina/util/Base64;->encodeBase64([B)[B

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-static {v1, v11, v2, v12}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 102
    :cond_3
    sget-object v2, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "  sending NTLM negotiation packet"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 104
    invoke-static {v7, v6, v2, v2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->createType1Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)[B

    move-result-object v2

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    .line 106
    invoke-static {v2}, Lorg/apache/mina/util/Base64;->encodeBase64([B)[B

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v1, v11, v2, v12}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 109
    :goto_2
    invoke-static {v1}, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->addKeepAliveHeaders(Ljava/util/Map;)V

    .line 110
    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->setHeaders(Ljava/util/Map;)V

    .line 112
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    .line 113
    iget p1, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    add-int/2addr p1, v12

    iput p1, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    return-void
.end method

.method public handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .line 138
    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-nez v0, :cond_1

    .line 139
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->getNTLMHeader(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)Ljava/lang/String;

    move-result-object v0

    .line 140
    iput v1, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_1

    :cond_0
    return-void

    .line 151
    :cond_1
    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    if-ne v0, v1, :cond_3

    .line 154
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->getNTLMHeader(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_2

    .line 161
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 162
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/mina/util/Base64;->decodeBase64([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->challengePacket:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x2

    .line 166
    iput p1, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    return-void

    :catch_0
    move-exception p1

    .line 164
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v1, "Unable to decode the base64 encoded NTLM challenge"

    invoke-direct {v0, v1, p1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 157
    :cond_2
    new-instance p1, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v0, "Unexpected error while reading server challenge !"

    invoke-direct {p1, v0}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_3
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unexpected response code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusLine()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
