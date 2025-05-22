.class public abstract Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;
.super Lorg/apache/mina/core/session/AbstractIoSessionConfig;
.source "AbstractDatagramSessionConfig.java"

# interfaces
.implements Lorg/apache/mina/transport/socket/DatagramSessionConfig;


# instance fields
.field private closeOnPortUnreachable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->closeOnPortUnreachable:Z

    return-void
.end method


# virtual methods
.method protected isBroadcastChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCloseOnPortUnreachable()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->closeOnPortUnreachable:Z

    return v0
.end method

.method protected isReceiveBufferSizeChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isReuseAddressChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isSendBufferSizeChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isTrafficClassChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAll(Lorg/apache/mina/core/session/IoSessionConfig;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setAll(Lorg/apache/mina/core/session/IoSessionConfig;)V

    .line 41
    instance-of v0, p1, Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    instance-of v0, p1, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;

    if-eqz v0, :cond_5

    .line 47
    check-cast p1, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;

    .line 49
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isBroadcastChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isBroadcast()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setBroadcast(Z)V

    .line 53
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isReceiveBufferSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->getReceiveBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setReceiveBufferSize(I)V

    .line 57
    :cond_2
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isReuseAddressChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isReuseAddress()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setReuseAddress(Z)V

    .line 61
    :cond_3
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isSendBufferSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->getSendBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setSendBufferSize(I)V

    .line 65
    :cond_4
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isTrafficClassChanged()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->getTrafficClass()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->getTrafficClass()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 66
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->getTrafficClass()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setTrafficClass(I)V

    goto :goto_0

    .line 69
    :cond_5
    check-cast p1, Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    .line 70
    invoke-interface {p1}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->isBroadcast()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setBroadcast(Z)V

    .line 71
    invoke-interface {p1}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getReceiveBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setReceiveBufferSize(I)V

    .line 72
    invoke-interface {p1}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->isReuseAddress()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setReuseAddress(Z)V

    .line 73
    invoke-interface {p1}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getSendBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setSendBufferSize(I)V

    .line 75
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->getTrafficClass()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getTrafficClass()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 76
    invoke-interface {p1}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getTrafficClass()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setTrafficClass(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public setCloseOnPortUnreachable(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->closeOnPortUnreachable:Z

    return-void
.end method
