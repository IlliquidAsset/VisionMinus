.class public Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;
.super Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;
.source "Socks5LogicHandler.java"


# static fields
.field private static final GSS_CONTEXT:Ljava/lang/String;

.field private static final GSS_TOKEN:Ljava/lang/String;

.field private static final HANDSHAKE_STEP:Ljava/lang/String;

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final SELECTED_AUTH_METHOD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    const-class v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".SelectedAuthMethod"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".HandshakeStep"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".GSSContext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".GSSToken"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_TOKEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 2

    .line 75
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .line 76
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private encodeAuthenticationPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getUserName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 187
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getPassword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 188
    array-length v1, v0

    add-int/lit8 v1, v1, 0x3

    array-length v3, p1

    add-int/2addr v1, v3

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 190
    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 191
    array-length v2, v0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 192
    invoke-virtual {v1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 193
    array-length v0, p1

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 194
    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v1

    .line 182
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->encodeGSSAPIAuthenticationPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    .line 178
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private encodeGSSAPIAuthenticationPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ietf/jgss/GSSContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 213
    invoke-static {}, Lorg/ietf/jgss/GSSManager;->getInstance()Lorg/ietf/jgss/GSSManager;

    move-result-object v0

    .line 214
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getServiceKerberosName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lorg/ietf/jgss/GSSManager;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object p1

    .line 215
    new-instance v3, Lorg/ietf/jgss/Oid;

    const-string v4, "1.2.840.113554.1.2.2"

    invoke-direct {v3, v4}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    .line 217
    sget-object v4, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    sget-object v4, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "Available mechs:"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Lorg/ietf/jgss/GSSManager;->getMechs()[Lorg/ietf/jgss/Oid;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 220
    invoke-virtual {v7, v3}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 221
    sget-object v8, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v9, "Found Kerberos V OID available"

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 223
    :cond_0
    sget-object v8, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v0, v7}, Lorg/ietf/jgss/GSSManager;->getNamesForMech(Lorg/ietf/jgss/Oid;)[Lorg/ietf/jgss/Oid;

    move-result-object v9

    const-string v10, "{} with oid = {}"

    invoke-interface {v8, v10, v9, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {v0, p1, v3, v1, v2}, Lorg/ietf/jgss/GSSManager;->createContext(Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSCredential;I)Lorg/ietf/jgss/GSSContext;

    move-result-object v0

    const/4 p1, 0x1

    .line 229
    invoke-interface {v0, p1}, Lorg/ietf/jgss/GSSContext;->requestMutualAuth(Z)V

    .line 230
    invoke-interface {v0, v2}, Lorg/ietf/jgss/GSSContext;->requestConf(Z)V

    .line 231
    invoke-interface {v0, v2}, Lorg/ietf/jgss/GSSContext;->requestInteg(Z)V

    .line 233
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    sget-object v3, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-interface {p1, v3, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    sget-object v3, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_TOKEN:Ljava/lang/String;

    invoke-interface {p1, v3}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    if-eqz p1, :cond_3

    .line 238
    sget-object v3, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v5

    const-string v6, "  Received Token[{}] = {}"

    invoke-interface {v3, v6, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    :cond_3
    invoke-interface {v0}, Lorg/ietf/jgss/GSSContext;->isEstablished()Z

    move-result v3

    if-nez v3, :cond_5

    if-nez p1, :cond_4

    const/16 p1, 0x20

    new-array p1, p1, [B

    .line 248
    :cond_4
    array-length v3, p1

    invoke-interface {v0, p1, v2, v3}, Lorg/ietf/jgss/GSSContext;->initSecContext([BII)[B

    move-result-object p1

    if-eqz p1, :cond_5

    .line 253
    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "  Sending Token[{}] = {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_TOKEN:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [B

    .line 257
    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 260
    array-length v2, p1

    invoke-static {v2, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->intToNetworkByteOrder(II)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 261
    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_5
    return-object v1

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method private encodeInitialGreetingPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    .line 98
    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->SUPPORTED_AUTH_METHODS:[B

    array-length v0, v0

    int-to-byte v0, v0

    add-int/lit8 v1, v0, 0x2

    .line 99
    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 101
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getProtocolVersion()B

    move-result p1

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 102
    invoke-virtual {v1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 103
    sget-object p1, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->SUPPORTED_AUTH_METHODS:[B

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v1
.end method

.method private encodeProxyRequestPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getEndpointAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v5

    if-nez v5, :cond_2

    .line 123
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet6Address;

    if-eqz v5, :cond_0

    const/16 v4, 0x16

    const/4 v1, 0x4

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    const/16 v4, 0xa

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ASCII"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    move-object v2, v0

    :cond_3
    if-eqz v2, :cond_5

    .line 134
    array-length v0, v2

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    const/4 v1, 0x3

    .line 141
    :goto_0
    invoke-static {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getProtocolVersion()B

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 144
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getCommandCode()B

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 145
    invoke-virtual {v0, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 146
    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v2, :cond_4

    .line 149
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getIpAddress()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 151
    :cond_4
    array-length v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 152
    invoke-virtual {v0, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 155
    :goto_1
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getPort()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0

    .line 137
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SocksProxyRequest object has no suitable endpoint information"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-nez p3, :cond_0

    .line 281
    :try_start_0
    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->encodeInitialGreetingPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 284
    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->encodeAuthenticationPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p3, 0x2

    :cond_1
    :goto_0
    if-ne p3, v1, :cond_2

    .line 292
    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->encodeProxyRequestPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 295
    :cond_2
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 296
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p2, "Unable to send Socks request: "

    .line 299
    invoke-virtual {p0, p2, p1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected closeSession(Ljava/lang/String;)V
    .locals 2

    .line 447
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ietf/jgss/GSSContext;

    if-eqz v0, :cond_0

    .line 450
    :try_start_0
    invoke-interface {v0}, Lorg/ietf/jgss/GSSContext;->dispose()V
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 452
    invoke-virtual {v0}, Lorg/ietf/jgss/GSSException;->printStackTrace()V

    .line 453
    invoke-super {p0, p1, v0}, Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 457
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;->closeSession(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 3

    monitor-enter p0

    .line 85
    :try_start_0
    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, " doHandshake()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->request:Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    sget-object v2, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected handleResponse(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p3, :cond_1

    .line 341
    invoke-virtual {p2, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 348
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v4

    sget-object v5, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 344
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No acceptable authentication method to use with the socks proxy server"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ne p3, v2, :cond_8

    .line 352
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    sget-object v4, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    const-string v4, "Authentication failed"

    if-ne v3, v2, :cond_6

    .line 355
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v3

    .line 357
    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v5

    if-ne v5, v2, :cond_5

    .line 360
    invoke-virtual {p2, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_4

    .line 364
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v4

    if-lt v4, v1, :cond_3

    new-array v1, v1, [B

    .line 366
    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->get([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 367
    invoke-static {v1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte2([B)I

    move-result v1

    .line 368
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    if-lt v3, v1, :cond_2

    .line 369
    new-array v1, v1, [B

    .line 370
    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->get([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 371
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    sget-object v4, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_TOKEN:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_2
    return-void

    .line 377
    :cond_3
    invoke-virtual {p2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-void

    .line 361
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Authentication failed: GSS API Security Context Failure"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 358
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 380
    :cond_6
    invoke-virtual {p2, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    .line 381
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    if-ne p3, v1, :cond_e

    const/4 p1, 0x3

    .line 386
    invoke-virtual {p2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result p3

    const/4 v1, 0x4

    if-ne p3, v1, :cond_9

    const/16 p1, 0x16

    goto :goto_0

    :cond_9
    if-ne p3, v2, :cond_a

    const/16 p1, 0xa

    goto :goto_0

    :cond_a
    if-ne p3, p1, :cond_d

    .line 393
    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result p1

    add-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x6

    .line 398
    :goto_0
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p3

    if-lt p3, p1, :cond_c

    .line 400
    invoke-virtual {p2, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result p3

    .line 401
    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p3}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->getReplyCodeAsString(B)Ljava/lang/String;

    move-result-object v3

    const-string v4, "  response status: {}"

    invoke-interface {v1, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p3, :cond_b

    .line 404
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 405
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->setHandshakeComplete()V

    return-void

    .line 409
    :cond_b
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy handshake failed - Code: 0x"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v2, [B

    aput-byte p3, v1, v0

    invoke-static {v1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    return-void

    .line 395
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknwon address type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_1
    if-lez v1, :cond_f

    .line 416
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_f
    if-ne p3, v2, :cond_11

    .line 423
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p2

    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    invoke-interface {p2, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    if-ne p2, v2, :cond_11

    .line 425
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p2

    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-interface {p2, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/ietf/jgss/GSSContext;

    if-eqz p2, :cond_10

    .line 426
    invoke-interface {p2}, Lorg/ietf/jgss/GSSContext;->isEstablished()Z

    move-result p2

    if-nez p2, :cond_11

    :cond_10
    const/4 v0, 0x1

    :cond_11
    if-nez v0, :cond_12

    .line 433
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p2

    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    add-int/2addr p3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_12
    invoke-virtual {p0, p1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    return-void
.end method

.method public declared-synchronized messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 4

    monitor-enter p0

    .line 312
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 314
    invoke-virtual {p2, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Wrong socks version running on server"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v2, 0x2

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 319
    :cond_2
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    if-lt v3, v2, :cond_3

    .line 320
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->handleResponse(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;I)V

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_4

    .line 321
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    if-lt v2, v1, :cond_4

    .line 322
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->handleResponse(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "Proxy handshake failed: "

    .line 325
    invoke-virtual {p0, p2, p1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method
