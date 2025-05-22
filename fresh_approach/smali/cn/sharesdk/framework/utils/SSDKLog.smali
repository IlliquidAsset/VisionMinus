.class public Lcn/sharesdk/framework/utils/SSDKLog;
.super Ljava/lang/Object;
.source "SSDKLog.java"


# static fields
.field private static a:Lcom/mob/tools/log/NLog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mob/tools/log/NLog;
    .locals 3

    const-string v0, "SHARESDK"

    .line 13
    invoke-static {v0}, Lcom/mob/tools/log/NLog;->getInstance(Ljava/lang/String;)Lcom/mob/tools/log/NLog;

    move-result-object v1

    sput-object v1, Lcn/sharesdk/framework/utils/SSDKLog;->a:Lcom/mob/tools/log/NLog;

    .line 14
    invoke-static {}, Lcom/mob/commons/logcollector/DefaultLogsCollector;->get()Lcom/mob/commons/logcollector/DefaultLogsCollector;

    move-result-object v1

    sget v2, Lcn/sharesdk/framework/ShareSDK;->SDK_VERSION_CODE:I

    invoke-virtual {v1, v0, v2}, Lcom/mob/commons/logcollector/DefaultLogsCollector;->addSDK(Ljava/lang/String;I)V

    .line 15
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->a:Lcom/mob/tools/log/NLog;

    return-object v0
.end method

.method public static b()Lcom/mob/tools/log/NLog;
    .locals 1

    .line 19
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->a:Lcom/mob/tools/log/NLog;

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->a()Lcom/mob/tools/log/NLog;

    .line 22
    :cond_0
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->a:Lcom/mob/tools/log/NLog;

    return-object v0
.end method
