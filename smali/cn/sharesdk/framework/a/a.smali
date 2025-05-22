.class public Lcn/sharesdk/framework/a/a;
.super Ljava/lang/Object;
.source "CommonNetworkApi.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .line 14
    invoke-static {}, Lcom/mob/commons/MobProductCollector;->getUserIdentity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
