.class public Lcom/powervision/gcs/model/ship/UserEntity;
.super Ljava/lang/Object;
.source "UserEntity.java"

# interfaces
.implements Lme/yokeyword/indexablerv/IndexableEntity;


# instance fields
.field private avatar:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private nick:Ljava/lang/String;

.field private pinyin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/UserEntity;->nick:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/powervision/gcs/model/ship/UserEntity;->mobile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/UserEntity;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldIndexBy()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/UserEntity;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldPinyinIndexBy()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/UserEntity;->pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/UserEntity;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/UserEntity;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/UserEntity;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setFieldIndexBy(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/UserEntity;->nick:Ljava/lang/String;

    return-void
.end method

.method public setFieldPinyinIndexBy(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/UserEntity;->pinyin:Ljava/lang/String;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/UserEntity;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/UserEntity;->nick:Ljava/lang/String;

    return-void
.end method
