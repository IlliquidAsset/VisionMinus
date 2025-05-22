.class public Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;
.super Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;
.source "Socks4LogicHandler.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    return-void
.end method


# virtual methods
.method public doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2

    .line 56
    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->logger:Lorg/slf4j/Logger;

    const-string v1, " doHandshake()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->request:Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)V

    return-void
.end method

.method protected handleResponse(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 141
    invoke-virtual {p1, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v2

    .line 144
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {p1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    const/16 p1, 0x5a

    if-ne v2, p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->setHandshakeComplete()V

    return-void

    .line 149
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy handshake failed - Code: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [B

    aput-byte v2, v1, v0

    invoke-static {v1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-static {v2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->getReplyCodeAsString(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Socks response seems to be malformed"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 1

    .line 117
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    .line 118
    invoke-virtual {p0, p2}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->handleResponse(Lorg/apache/mina/core/buffer/IoBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Proxy handshake failed: "

    .line 121
    invoke-virtual {p0, p2, p1}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)V
    .locals 5

    const-string v0, "ASCII"

    .line 71
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getIpAddress()[B

    move-result-object v1

    sget-object v2, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->FAKE_IP:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 72
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x9

    if-eqz v1, :cond_1

    .line 78
    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 81
    :cond_1
    invoke-static {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    .line 83
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getProtocolVersion()B

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 84
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getCommandCode()B

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 85
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getPort()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 86
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getIpAddress()[B

    move-result-object p2

    invoke-virtual {v3, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 87
    invoke-virtual {v3, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 p2, 0x0

    .line 88
    invoke-virtual {v3, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v1, :cond_2

    .line 91
    invoke-virtual {v3, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 92
    invoke-virtual {v3, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_2
    if-eqz v1, :cond_3

    .line 96
    sget-object p2, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->logger:Lorg/slf4j/Logger;

    const-string v0, "  sending SOCKS4a request"

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_3
    sget-object p2, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->logger:Lorg/slf4j/Logger;

    const-string v0, "  sending SOCKS4 request"

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 101
    :goto_1
    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 102
    invoke-virtual {p0, p1, v3}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "Unable to send Socks request: "

    .line 104
    invoke-virtual {p0, p2, p1}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
