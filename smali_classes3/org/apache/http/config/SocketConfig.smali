.class public Lorg/apache/http/config/SocketConfig;
.super Ljava/lang/Object;
.source "SocketConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/config/SocketConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/http/config/SocketConfig;


# instance fields
.field private final backlogSize:I

.field private final rcvBufSize:I

.field private final sndBufSize:I

.field private final soKeepAlive:Z

.field private final soLinger:I

.field private final soReuseAddress:Z

.field private final soTimeout:I

.field private final tcpNoDelay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lorg/apache/http/config/SocketConfig$Builder;

    invoke-direct {v0}, Lorg/apache/http/config/SocketConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/http/config/SocketConfig$Builder;->build()Lorg/apache/http/config/SocketConfig;

    move-result-object v0

    sput-object v0, Lorg/apache/http/config/SocketConfig;->DEFAULT:Lorg/apache/http/config/SocketConfig;

    return-void
.end method

.method constructor <init>(IZIZZIII)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lorg/apache/http/config/SocketConfig;->soTimeout:I

    .line 64
    iput-boolean p2, p0, Lorg/apache/http/config/SocketConfig;->soReuseAddress:Z

    .line 65
    iput p3, p0, Lorg/apache/http/config/SocketConfig;->soLinger:I

    .line 66
    iput-boolean p4, p0, Lorg/apache/http/config/SocketConfig;->soKeepAlive:Z

    .line 67
    iput-boolean p5, p0, Lorg/apache/http/config/SocketConfig;->tcpNoDelay:Z

    .line 68
    iput p6, p0, Lorg/apache/http/config/SocketConfig;->sndBufSize:I

    .line 69
    iput p7, p0, Lorg/apache/http/config/SocketConfig;->rcvBufSize:I

    .line 70
    iput p8, p0, Lorg/apache/http/config/SocketConfig;->backlogSize:I

    return-void
.end method

.method public static copy(Lorg/apache/http/config/SocketConfig;)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 2

    const-string v0, "Socket config"

    .line 210
    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    new-instance v0, Lorg/apache/http/config/SocketConfig$Builder;

    invoke-direct {v0}, Lorg/apache/http/config/SocketConfig$Builder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/config/SocketConfig;->getSoTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/config/SocketConfig$Builder;->setSoTimeout(I)Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/config/SocketConfig;->isSoReuseAddress()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/config/SocketConfig$Builder;->setSoReuseAddress(Z)Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/config/SocketConfig;->getSoLinger()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/config/SocketConfig$Builder;->setSoLinger(I)Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/config/SocketConfig;->isSoKeepAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/config/SocketConfig$Builder;->setSoKeepAlive(Z)Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/config/SocketConfig;->isTcpNoDelay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/config/SocketConfig$Builder;->setTcpNoDelay(Z)Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/config/SocketConfig;->getSndBufSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/config/SocketConfig$Builder;->setSndBufSize(I)Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/config/SocketConfig;->getRcvBufSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/config/SocketConfig$Builder;->setRcvBufSize(I)Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/config/SocketConfig;->getBacklogSize()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/http/config/SocketConfig$Builder;->setBacklogSize(I)Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static custom()Lorg/apache/http/config/SocketConfig$Builder;
    .locals 1

    .line 206
    new-instance v0, Lorg/apache/http/config/SocketConfig$Builder;

    invoke-direct {v0}, Lorg/apache/http/config/SocketConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lorg/apache/http/config/SocketConfig;->clone()Lorg/apache/http/config/SocketConfig;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lorg/apache/http/config/SocketConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 187
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/config/SocketConfig;

    return-object v0
.end method

.method public getBacklogSize()I
    .locals 1

    .line 182
    iget v0, p0, Lorg/apache/http/config/SocketConfig;->backlogSize:I

    return v0
.end method

.method public getRcvBufSize()I
    .locals 1

    .line 169
    iget v0, p0, Lorg/apache/http/config/SocketConfig;->rcvBufSize:I

    return v0
.end method

.method public getSndBufSize()I
    .locals 1

    .line 154
    iget v0, p0, Lorg/apache/http/config/SocketConfig;->sndBufSize:I

    return v0
.end method

.method public getSoLinger()I
    .locals 1

    .line 111
    iget v0, p0, Lorg/apache/http/config/SocketConfig;->soLinger:I

    return v0
.end method

.method public getSoTimeout()I
    .locals 1

    .line 83
    iget v0, p0, Lorg/apache/http/config/SocketConfig;->soTimeout:I

    return v0
.end method

.method public isSoKeepAlive()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lorg/apache/http/config/SocketConfig;->soKeepAlive:Z

    return v0
.end method

.method public isSoReuseAddress()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lorg/apache/http/config/SocketConfig;->soReuseAddress:Z

    return v0
.end method

.method public isTcpNoDelay()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lorg/apache/http/config/SocketConfig;->tcpNoDelay:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[soTimeout="

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/http/config/SocketConfig;->soTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", soReuseAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/http/config/SocketConfig;->soReuseAddress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", soLinger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/http/config/SocketConfig;->soLinger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", soKeepAlive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/http/config/SocketConfig;->soKeepAlive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tcpNoDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/http/config/SocketConfig;->tcpNoDelay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sndBufSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/http/config/SocketConfig;->sndBufSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rcvBufSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/http/config/SocketConfig;->rcvBufSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backlogSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/http/config/SocketConfig;->backlogSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
