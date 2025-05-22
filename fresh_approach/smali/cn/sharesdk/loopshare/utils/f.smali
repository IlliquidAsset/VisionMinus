.class public Lcn/sharesdk/loopshare/utils/f;
.super Lcom/mob/tools/log/NLog;
.source "MobLinkLog.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/mob/tools/log/NLog;-><init>()V

    .line 14
    invoke-static {}, Lcn/sharesdk/loopshare/MobLink;->getSdkTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcn/sharesdk/loopshare/utils/MobLinkLog$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/loopshare/utils/MobLinkLog$1;-><init>(Lcn/sharesdk/loopshare/utils/f;)V

    invoke-static {v0, v1}, Lcn/sharesdk/loopshare/utils/f;->setCollector(Ljava/lang/String;Lcom/mob/tools/log/LogCollector;)V

    return-void
.end method

.method public static a()Lcn/sharesdk/loopshare/utils/f;
    .locals 1

    .line 30
    new-instance v0, Lcn/sharesdk/loopshare/utils/f;

    invoke-direct {v0}, Lcn/sharesdk/loopshare/utils/f;-><init>()V

    return-object v0
.end method

.method public static b()Lcom/mob/tools/log/NLog;
    .locals 2

    .line 34
    invoke-static {}, Lcn/sharesdk/loopshare/MobLink;->getSdkTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/sharesdk/loopshare/utils/f;->getInstanceForSDK(Ljava/lang/String;Z)Lcom/mob/tools/log/NLog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getSDKTag()Ljava/lang/String;
    .locals 1

    .line 26
    invoke-static {}, Lcn/sharesdk/loopshare/MobLink;->getSdkTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
