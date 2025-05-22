.class public Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;
.super Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;
.source "DefaultSocketSessionConfig.java"


# static fields
.field private static final DEFAULT_KEEP_ALIVE:Z = false

.field private static final DEFAULT_OOB_INLINE:Z = false

.field private static final DEFAULT_REUSE_ADDRESS:Z = false

.field private static final DEFAULT_SO_LINGER:I = -0x1

.field private static final DEFAULT_TCP_NO_DELAY:Z = false

.field private static final DEFAULT_TRAFFIC_CLASS:I


# instance fields
.field private defaultReuseAddress:Z

.field private keepAlive:Z

.field private oobInline:Z

.field protected parent:Lorg/apache/mina/core/service/IoService;

.field private receiveBufferSize:I

.field private reuseAddress:Z

.field private sendBufferSize:I

.field private soLinger:I

.field private tcpNoDelay:Z

.field private trafficClass:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->receiveBufferSize:I

    .line 52
    iput v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->sendBufferSize:I

    const/4 v1, 0x0

    .line 54
    iput v1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->trafficClass:I

    .line 56
    iput-boolean v1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->keepAlive:Z

    .line 58
    iput-boolean v1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->oobInline:Z

    .line 60
    iput v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->soLinger:I

    .line 62
    iput-boolean v1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->tcpNoDelay:Z

    return-void
.end method


# virtual methods
.method public getReceiveBufferSize()I
    .locals 1

    .line 109
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->receiveBufferSize:I

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1

    .line 125
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->sendBufferSize:I

    return v0
.end method

.method public getSoLinger()I
    .locals 1

    .line 189
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->soLinger:I

    return v0
.end method

.method public getTrafficClass()I
    .locals 1

    .line 141
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->trafficClass:I

    return v0
.end method

.method public init(Lorg/apache/mina/core/service/IoService;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->parent:Lorg/apache/mina/core/service/IoService;

    .line 79
    instance-of p1, p1, Lorg/apache/mina/transport/socket/SocketAcceptor;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->defaultReuseAddress:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->defaultReuseAddress:Z

    .line 85
    :goto_0
    iget-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->defaultReuseAddress:Z

    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->reuseAddress:Z

    return-void
.end method

.method public isKeepAlive()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->keepAlive:Z

    return v0
.end method

.method protected isKeepAliveChanged()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->keepAlive:Z

    return v0
.end method

.method public isOobInline()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->oobInline:Z

    return v0
.end method

.method protected isOobInlineChanged()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->oobInline:Z

    return v0
.end method

.method protected isReceiveBufferSizeChanged()Z
    .locals 2

    .line 237
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->receiveBufferSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReuseAddress()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->reuseAddress:Z

    return v0
.end method

.method protected isReuseAddressChanged()Z
    .locals 2

    .line 245
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->reuseAddress:Z

    iget-boolean v1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->defaultReuseAddress:Z

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isSendBufferSizeChanged()Z
    .locals 2

    .line 253
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->sendBufferSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isSoLingerChanged()Z
    .locals 2

    .line 261
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->soLinger:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTcpNoDelay()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->tcpNoDelay:Z

    return v0
.end method

.method protected isTcpNoDelayChanged()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->tcpNoDelay:Z

    return v0
.end method

.method protected isTrafficClassChanged()Z
    .locals 1

    .line 277
    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->trafficClass:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setKeepAlive(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->keepAlive:Z

    return-void
.end method

.method public setOobInline(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->oobInline:Z

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 0

    .line 117
    iput p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->receiveBufferSize:I

    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->reuseAddress:Z

    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 0

    .line 133
    iput p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->sendBufferSize:I

    return-void
.end method

.method public setSoLinger(I)V
    .locals 0

    .line 197
    iput p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->soLinger:I

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->tcpNoDelay:Z

    return-void
.end method

.method public setTrafficClass(I)V
    .locals 0

    .line 149
    iput p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->trafficClass:I

    return-void
.end method
