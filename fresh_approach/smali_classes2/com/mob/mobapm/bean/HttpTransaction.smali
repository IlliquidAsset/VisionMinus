.class public Lcom/mob/mobapm/bean/HttpTransaction;
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

.field private host:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private networkType:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private requestDuration:J

.field private requestTime:J

.field private responseTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/bean/HttpTransaction;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getClientTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mob/mobapm/bean/HttpTransaction;->clientTime:J

    return-wide v0
.end method

.method public getDataNetworkType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/bean/HttpTransaction;->dataNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method public getDuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/bean/HttpTransaction;->duid:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/bean/HttpTransaction;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/bean/HttpTransaction;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/bean/HttpTransaction;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/bean/HttpTransaction;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/bean/HttpTransaction;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mob/mobapm/bean/HttpTransaction;->requestDuration:J

    return-wide v0
.end method

.method public getRequestTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mob/mobapm/bean/HttpTransaction;->requestTime:J

    return-wide v0
.end method

.method public getResponseTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mob/mobapm/bean/HttpTransaction;->responseTime:J

    return-wide v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->body:Ljava/lang/String;

    return-void
.end method

.method public setClientTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->clientTime:J

    return-void
.end method

.method public setDataNetworkType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->dataNetworkType:Ljava/lang/String;

    return-void
.end method

.method public setDuid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->duid:Ljava/lang/String;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->host:Ljava/lang/String;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->method:Ljava/lang/String;

    return-void
.end method

.method public setNetworkType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->networkType:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->path:Ljava/lang/String;

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->query:Ljava/lang/String;

    return-void
.end method

.method public setRequestDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->requestDuration:J

    return-void
.end method

.method public setRequestTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->requestTime:J

    return-void
.end method

.method public setResponseTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->responseTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{host:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",method:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",requestTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->requestTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",clientTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->clientTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",responseTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->responseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",requestDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->requestDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",networkType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",dataNetworkType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/mobapm/bean/HttpTransaction;->dataNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
