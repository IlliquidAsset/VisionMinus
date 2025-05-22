.class public Lcom/powervision/base/model/UserModel;
.super Ljava/lang/Object;
.source "UserModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private expire:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private user:Lcom/powervision/base/model/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpire()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/powervision/base/model/UserModel;->expire:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/powervision/base/model/UserModel;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/powervision/base/model/UserInfo;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/powervision/base/model/UserModel;->user:Lcom/powervision/base/model/UserInfo;

    return-object v0
.end method

.method public setExpire(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/powervision/base/model/UserModel;->expire:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/powervision/base/model/UserModel;->token:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lcom/powervision/base/model/UserInfo;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/powervision/base/model/UserModel;->user:Lcom/powervision/base/model/UserInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserModel{expire=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/base/model/UserModel;->expire:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", token=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/base/model/UserModel;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/base/model/UserModel;->user:Lcom/powervision/base/model/UserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
