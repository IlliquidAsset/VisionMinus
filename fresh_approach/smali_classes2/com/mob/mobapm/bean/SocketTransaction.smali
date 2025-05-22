.class public Lcom/mob/mobapm/bean/SocketTransaction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private clientTime:J

.field private connectBeginTime:J

.field private connectDuration:J

.field private connectEndTime:J

.field private dataNetworkType:Ljava/lang/String;

.field private duid:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private isCreate:Z

.field private networkType:Ljava/lang/String;

.field private port:I

.field private status:I

.field private transStatus:I

.field private transType:Lcom/mob/mobapm/bean/TransactionType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mob/mobapm/bean/SocketTransaction;->isCreate:Z

    return-void
.end method


# virtual methods
.method public getClientTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mob/mobapm/bean/SocketTransaction;->clientTime:J

    return-wide v0
.end method

.method public getConnectBeginTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mob/mobapm/bean/SocketTransaction;->connectBeginTime:J

    return-wide v0
.end method

.method public getConnectDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mob/mobapm/bean/SocketTransaction;->connectDuration:J

    return-wide v0
.end method

.method public getConnectEndTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mob/mobapm/bean/SocketTransaction;->connectEndTime:J

    return-wide v0
.end method

.method public getDataNetworkType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/bean/SocketTransaction;->dataNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method public getDuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/bean/SocketTransaction;->duid:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/bean/SocketTransaction;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/bean/SocketTransaction;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mob/mobapm/bean/SocketTransaction;->port:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mob/mobapm/bean/SocketTransaction;->status:I

    return v0
.end method

.method public getTransStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mob/mobapm/bean/SocketTransaction;->transStatus:I

    return v0
.end method

.method public getTransType()Lcom/mob/mobapm/bean/TransactionType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/bean/SocketTransaction;->transType:Lcom/mob/mobapm/bean/TransactionType;

    return-object v0
.end method

.method public isCreate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mob/mobapm/bean/SocketTransaction;->isCreate:Z

    return v0
.end method

.method public setClientTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->clientTime:J

    return-void
.end method

.method public setConnectBeginTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->connectBeginTime:J

    return-void
.end method

.method public setConnectDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->connectDuration:J

    return-void
.end method

.method public setConnectEndTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->connectEndTime:J

    return-void
.end method

.method public setCreate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->isCreate:Z

    return-void
.end method

.method public setDataNetworkType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->dataNetworkType:Ljava/lang/String;

    return-void
.end method

.method public setDuid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->duid:Ljava/lang/String;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->host:Ljava/lang/String;

    return-void
.end method

.method public setNetworkType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->networkType:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->port:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->status:I

    return-void
.end method

.method public setTransStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->transStatus:I

    return-void
.end method

.method public setTransType(Lcom/mob/mobapm/bean/TransactionType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->transType:Lcom/mob/mobapm/bean/TransactionType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{host:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",connectBeginTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->connectBeginTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",connectEndTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->connectEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",connectDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->connectDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",networkType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",dataNetworkType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->dataNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",transStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->transStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",transType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->transType:Lcom/mob/mobapm/bean/TransactionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",isCreate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mob/mobapm/bean/SocketTransaction;->isCreate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
