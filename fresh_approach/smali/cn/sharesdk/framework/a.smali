.class public Lcn/sharesdk/framework/a;
.super Ljava/lang/Object;
.source "CheckAppKey.java"


# static fields
.field public static volatile a:Z = false

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Z
    .locals 4

    .line 18
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v0

    .line 19
    sget-boolean v1, Lcn/sharesdk/framework/a;->a:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    sget-object v1, Lcn/sharesdk/framework/a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "CheckAppKeyAsynchronously verify the appkey"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 25
    new-instance v0, Lcn/sharesdk/framework/a$1;

    invoke-direct {v0}, Lcn/sharesdk/framework/a$1;-><init>()V

    .line 34
    invoke-virtual {v0}, Lcn/sharesdk/framework/a$1;->start()V

    const/4 v0, 0x1

    return v0

    .line 37
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CheckAppKeyDetermine whether successAppKey is equal to mobsdk.getappkey"

    invoke-virtual {v1, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 38
    sget-object v1, Lcn/sharesdk/framework/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v2
.end method
