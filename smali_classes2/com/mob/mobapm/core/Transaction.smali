.class public Lcom/mob/mobapm/core/Transaction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private body:Ljava/lang/String;

.field private clientTime:J

.field private dataNetworkType:Ljava/lang/String;

.field private duid:Ljava/lang/String;

.field private errMsg:Ljava/lang/String;

.field private hijacked:I

.field private host:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private isCreate:Z

.field private mac:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private networkType:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private requestDuration:J

.field private requestTime:J

.field private responseTime:J

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
    iput-boolean v0, p0, Lcom/mob/mobapm/core/Transaction;->isCreate:Z

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/core/Transaction;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getClientTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mob/mobapm/core/Transaction;->clientTime:J

    return-wide v0
.end method

.method public getDataNetworkType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/core/Transaction;->dataNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method public getDuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/core/Transaction;->duid:Ljava/lang/String;

    return-object v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/core/Transaction;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getHijacked()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mob/mobapm/core/Transaction;->hijacked:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/core/Transaction;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/core/Transaction;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/core/Transaction;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/core/Transaction;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/core/Transaction;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/core/Transaction;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/core/Transaction;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/core/Transaction;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mob/mobapm/core/Transaction;->requestDuration:J

    return-wide v0
.end method

.method public getRequestTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mob/mobapm/core/Transaction;->requestTime:J

    return-wide v0
.end method

.method public getResponseTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mob/mobapm/core/Transaction;->responseTime:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mob/mobapm/core/Transaction;->status:I

    return v0
.end method

.method public getTransStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mob/mobapm/core/Transaction;->transStatus:I

    return v0
.end method

.method public getTransType()Lcom/mob/mobapm/bean/TransactionType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/core/Transaction;->transType:Lcom/mob/mobapm/bean/TransactionType;

    return-object v0
.end method

.method public isCreate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mob/mobapm/core/Transaction;->isCreate:Z

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/core/Transaction;->body:Ljava/lang/String;

    return-void
.end method

.method public setClientTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/mob/mobapm/core/Transaction;->clientTime:J

    return-void
.end method

.method public setCreate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mob/mobapm/core/Transaction;->isCreate:Z

    return-void
.end method

.method public setDataNetworkType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/core/Transaction;->dataNetworkType:Ljava/lang/String;

    return-void
.end method

.method public setDuid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/core/Transaction;->duid:Ljava/lang/String;

    return-void
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/core/Transaction;->errMsg:Ljava/lang/String;

    return-void
.end method

.method public setHijacked(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mob/mobapm/core/Transaction;->hijacked:I

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/core/Transaction;->host:Ljava/lang/String;

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/core/Transaction;->imei:Ljava/lang/String;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/core/Transaction;->ip:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/core/Transaction;->mac:Ljava/lang/String;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/core/Transaction;->method:Ljava/lang/String;

    return-void
.end method

.method public setNetworkType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/core/Transaction;->networkType:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/core/Transaction;->path:Ljava/lang/String;

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/core/Transaction;->query:Ljava/lang/String;

    return-void
.end method

.method public setRequestDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/mob/mobapm/core/Transaction;->requestDuration:J

    return-void
.end method

.method public setRequestTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/mob/mobapm/core/Transaction;->requestTime:J

    return-void
.end method

.method public setResponseTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/mob/mobapm/core/Transaction;->responseTime:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mob/mobapm/core/Transaction;->status:I

    return-void
.end method

.method public setTransStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mob/mobapm/core/Transaction;->transStatus:I

    return-void
.end method

.method public setTransType(Lcom/mob/mobapm/bean/TransactionType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/core/Transaction;->transType:Lcom/mob/mobapm/bean/TransactionType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{host:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/mobapm/core/Transaction;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/mobapm/core/Transaction;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",hijacked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mob/mobapm/core/Transaction;->hijacked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/mobapm/core/Transaction;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",method:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/mobapm/core/Transaction;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mob/mobapm/core/Transaction;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",requestTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mob/mobapm/core/Transaction;->requestTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",clientTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mob/mobapm/core/Transaction;->clientTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",responseTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mob/mobapm/core/Transaction;->responseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",requestDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mob/mobapm/core/Transaction;->requestDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",networkType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/mobapm/core/Transaction;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",dataNetworkType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/mobapm/core/Transaction;->dataNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mac:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/mobapm/core/Transaction;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",transStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mob/mobapm/core/Transaction;->transStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",transType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/mobapm/core/Transaction;->transType:Lcom/mob/mobapm/bean/TransactionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",errMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/mobapm/core/Transaction;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isCreate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mob/mobapm/core/Transaction;->isCreate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
