.class public Lcom/powervision/home/utils/ActiviteUtil;
.super Ljava/lang/Object;
.source "ActiviteUtil.java"


# static fields
.field private static activiteUtil:Lcom/powervision/home/utils/ActiviteUtil;


# instance fields
.field private powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/home/utils/ActiviteUtil;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-void
.end method

.method public static getIntance()Lcom/powervision/home/utils/ActiviteUtil;
    .locals 1

    .line 12
    sget-object v0, Lcom/powervision/home/utils/ActiviteUtil;->activiteUtil:Lcom/powervision/home/utils/ActiviteUtil;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/powervision/home/utils/ActiviteUtil;

    invoke-direct {v0}, Lcom/powervision/home/utils/ActiviteUtil;-><init>()V

    sput-object v0, Lcom/powervision/home/utils/ActiviteUtil;->activiteUtil:Lcom/powervision/home/utils/ActiviteUtil;

    .line 15
    :cond_0
    sget-object v0, Lcom/powervision/home/utils/ActiviteUtil;->activiteUtil:Lcom/powervision/home/utils/ActiviteUtil;

    return-object v0
.end method
