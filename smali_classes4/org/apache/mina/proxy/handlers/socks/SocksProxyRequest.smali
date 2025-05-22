.class public Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;
.super Lorg/apache/mina/proxy/handlers/ProxyRequest;
.source "SocksProxyRequest.java"


# instance fields
.field private commandCode:B

.field private host:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private port:I

.field private protocolVersion:B

.field private serviceKerberosName:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(BBLjava/net/InetSocketAddress;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p3}, Lorg/apache/mina/proxy/handlers/ProxyRequest;-><init>(Ljava/net/InetSocketAddress;)V

    .line 79
    iput-byte p1, p0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->protocolVersion:B

    .line 80
    iput-byte p2, p0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->commandCode:B

    .line 81
    iput-object p4, p0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->userName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Lorg/apache/mina/proxy/handlers/ProxyRequest;-><init>()V

    const/4 v0, 0x4

    .line 93
    iput-byte v0, p0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->protocolVersion:B

    .line 94
    iput-byte p1, p0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->commandCode:B

    .line 95
    iput-object p4, p0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->userName:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->host:Ljava/lang/String;

    .line 97
    iput p3, p0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->port:I

    return-void
.end method


# virtual methods
.method public getCommandCode()B
    .locals 1

    .line 132
    iget-byte v0, p0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->commandCode:B

    return v0
.end method

.method public final declared-synchronized getHost()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->host:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getEndpointAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getEndpointAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->host:Ljava/lang/String;

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->host:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIpAddress()[B
    .locals 1

    .line 106
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getEndpointAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->FAKE_IP:[B

    return-object v0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getEndpointAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()[B
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 120
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getEndpointAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->port:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getEndpointAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    const/4 v2, 0x0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public getProtocolVersion()B
    .locals 1

    .line 141
    iget-byte v0, p0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->protocolVersion:B

    return v0
.end method

.method public getServiceKerberosName()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->serviceKerberosName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->password:Ljava/lang/String;

    return-void
.end method

.method public setServiceKerberosName(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->serviceKerberosName:Ljava/lang/String;

    return-void
.end method
