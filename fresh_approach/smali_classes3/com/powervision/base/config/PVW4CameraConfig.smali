.class public Lcom/powervision/base/config/PVW4CameraConfig;
.super Ljava/lang/Object;
.source "PVW4CameraConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/config/PVW4CameraConfig$SingletonHolder;
    }
.end annotation


# instance fields
.field private mHttpServerIp:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://192.168.1.10/"

    .line 31
    iput-object v0, p0, Lcom/powervision/base/config/PVW4CameraConfig;->mHttpServerIp:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/base/config/PVW4CameraConfig$1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/powervision/base/config/PVW4CameraConfig;-><init>()V

    return-void
.end method

.method public static get()Lcom/powervision/base/config/PVW4CameraConfig;
    .locals 1

    .line 27
    invoke-static {}, Lcom/powervision/base/config/PVW4CameraConfig$SingletonHolder;->access$100()Lcom/powervision/base/config/PVW4CameraConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHttpServerIp()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/powervision/base/config/PVW4CameraConfig;->mHttpServerIp:Ljava/lang/String;

    return-object v0
.end method

.method public setHttpServerIp(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/powervision/base/config/PVW4CameraConfig;->mHttpServerIp:Ljava/lang/String;

    return-void
.end method
