.class public Lcom/powervision/base/model/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private addtime:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private headImage:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private ipCity:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private sex:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private useremail:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private userphone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public change(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/powervision/base/model/UserInfo;->birthday:Ljava/lang/String;

    .line 165
    iput-object p3, p0, Lcom/powervision/base/model/UserInfo;->headImage:Ljava/lang/String;

    .line 166
    iput-object p2, p0, Lcom/powervision/base/model/UserInfo;->country:Ljava/lang/String;

    .line 167
    iput-object p4, p0, Lcom/powervision/base/model/UserInfo;->nickname:Ljava/lang/String;

    .line 168
    iput-object p5, p0, Lcom/powervision/base/model/UserInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public getAddtime()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/powervision/base/model/UserInfo;->addtime:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/powervision/base/model/UserInfo;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/powervision/base/model/UserInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/powervision/base/model/UserInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadImage()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/powervision/base/model/UserInfo;->headImage:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/powervision/base/model/UserInfo;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIpCity()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/powervision/base/model/UserInfo;->ipCity:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/powervision/base/model/UserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/powervision/base/model/UserInfo;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/powervision/base/model/UserInfo;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/powervision/base/model/UserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUseremail()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/powervision/base/model/UserInfo;->useremail:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/powervision/base/model/UserInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getUserphone()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/powervision/base/model/UserInfo;->userphone:Ljava/lang/String;

    return-object v0
.end method

.method public setAddtime(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/powervision/base/model/UserInfo;->addtime:Ljava/lang/String;

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/powervision/base/model/UserInfo;->birthday:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/powervision/base/model/UserInfo;->city:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/powervision/base/model/UserInfo;->country:Ljava/lang/String;

    return-void
.end method

.method public setHeadImage(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/powervision/base/model/UserInfo;->headImage:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/powervision/base/model/UserInfo;->id:Ljava/lang/Long;

    return-void
.end method

.method public setIpCity(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/powervision/base/model/UserInfo;->ipCity:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/powervision/base/model/UserInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/powervision/base/model/UserInfo;->sex:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/powervision/base/model/UserInfo;->signature:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/powervision/base/model/UserInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUseremail(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/powervision/base/model/UserInfo;->useremail:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/powervision/base/model/UserInfo;->username:Ljava/lang/String;

    return-void
.end method

.method public setUserphone(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/powervision/base/model/UserInfo;->userphone:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfo{addtime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/base/model/UserInfo;->addtime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", birthday=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/base/model/UserInfo;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", city=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/base/model/UserInfo;->city:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", country=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/base/model/UserInfo;->country:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", headImage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/base/model/UserInfo;->headImage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/base/model/UserInfo;->id:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ipCity=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/base/model/UserInfo;->ipCity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nickname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/base/model/UserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sex=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/base/model/UserInfo;->sex:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", signature=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/base/model/UserInfo;->signature:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/base/model/UserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", useremail=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/base/model/UserInfo;->useremail:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", username=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/base/model/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userphone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/base/model/UserInfo;->userphone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
