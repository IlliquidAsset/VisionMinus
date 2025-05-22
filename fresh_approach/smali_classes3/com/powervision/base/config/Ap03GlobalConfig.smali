.class public Lcom/powervision/base/config/Ap03GlobalConfig;
.super Ljava/lang/Object;
.source "Ap03GlobalConfig.java"


# static fields
.field public static final AVATAR_PATH_PREFIX:Ljava/lang/String; = "http://gcsbucket.oss-cn-hongkong.aliyuncs.com"

.field public static final DOWN_PRE:Ljava/lang/String; = "http://gcsbucket.oss-accelerate.aliyuncs.com"

.field public static final IMG_IP:Ljava/lang/String; = "http://gcsbucket.oss-accelerate.aliyuncs.com"

.field private static final TYPE:I = 0x3

.field public static final isGoogle:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "http://api.powervision.me/appServer/api/"

    return-object v0
.end method

.method public static getDbNoFlyZone()Ljava/lang/String;
    .locals 1

    const-string v0, "http://common.powervision.me:7778/queryBaseList"

    return-object v0
.end method

.method public static getLimitedFlyZone()Ljava/lang/String;
    .locals 1

    const-string v0, "http://common.powervision.me:7778/queryExtentList"

    return-object v0
.end method

.method public static getLogBuriedPointUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "http://common.powervision.me:8080/"

    return-object v0
.end method

.method public static getMatchHead()Ljava/lang/String;
    .locals 1

    const-string v0, "http://gcsbucket.oss-accelerate.aliyuncs.com/"

    return-object v0
.end method

.method public static getMatchMd5Url()Ljava/lang/String;
    .locals 2

    .line 106
    invoke-static {}, Lcom/powervision/base/config/Ap03GlobalConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "zip/queryZipMatch//?matchType=online"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "http://api.online.powervision.me/api/message/"

    return-object v0
.end method

.method public static getServerStatus()Ljava/lang/String;
    .locals 1

    const-string v0, "-PowerVision"

    return-object v0
.end method

.method public static getUtMissUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "http://14.116.187.241:13115/"

    return-object v0
.end method
