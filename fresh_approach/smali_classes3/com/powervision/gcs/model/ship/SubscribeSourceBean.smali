.class public Lcom/powervision/gcs/model/ship/SubscribeSourceBean;
.super Ljava/lang/Object;
.source "SubscribeSourceBean.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteByDesc()Ljava/lang/String;
    .locals 1

    const-string v0, "interest_desc=?"

    return-object v0
.end method

.method public static deleteByLatlng()Ljava/lang/String;
    .locals 1

    const-string v0, "interest_latlng=?"

    return-object v0
.end method

.method public static queryInterestAll()Ljava/lang/String;
    .locals 1

    const-string v0, "SELECT  * FROM interest"

    return-object v0
.end method

.method public static queryInterestDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT  * FROM interest WHERE interest_desc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
