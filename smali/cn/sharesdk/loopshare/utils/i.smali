.class public Lcn/sharesdk/loopshare/utils/i;
.super Ljava/lang/Object;
.source "SPHelper.java"


# static fields
.field private static final a:I

.field private static b:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    invoke-static {}, Lcn/sharesdk/loopshare/MobLink;->getSdkVersion()I

    move-result v0

    sput v0, Lcn/sharesdk/loopshare/utils/i;->a:I

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcn/sharesdk/loopshare/utils/i;

    monitor-enter v0

    .line 35
    :try_start_0
    invoke-static {}, Lcn/sharesdk/loopshare/utils/i;->c()V

    .line 36
    sget-object v1, Lcn/sharesdk/loopshare/utils/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "config_data"

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object p0, Lcn/sharesdk/loopshare/utils/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "debuggable"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Z)V
    .locals 3

    const-class v0, Lcn/sharesdk/loopshare/utils/i;

    monitor-enter v0

    .line 30
    :try_start_0
    invoke-static {}, Lcn/sharesdk/loopshare/utils/i;->c()V

    .line 31
    sget-object v1, Lcn/sharesdk/loopshare/utils/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "appInstall"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a()Z
    .locals 3

    const-class v0, Lcn/sharesdk/loopshare/utils/i;

    monitor-enter v0

    .line 25
    :try_start_0
    invoke-static {}, Lcn/sharesdk/loopshare/utils/i;->c()V

    .line 26
    sget-object v1, Lcn/sharesdk/loopshare/utils/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "appInstall"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .locals 3

    const-class v0, Lcn/sharesdk/loopshare/utils/i;

    monitor-enter v0

    .line 41
    :try_start_0
    invoke-static {}, Lcn/sharesdk/loopshare/utils/i;->c()V

    .line 42
    sget-object v1, Lcn/sharesdk/loopshare/utils/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "debuggable"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v0

    return-object v1

    .line 46
    :cond_0
    :try_start_1
    sget-object v1, Lcn/sharesdk/loopshare/utils/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "config_data"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static c()V
    .locals 3

    .line 18
    sget-object v0, Lcn/sharesdk/loopshare/utils/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/sharesdk/loopshare/utils/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    .line 20
    invoke-static {}, Lcn/sharesdk/loopshare/MobLink;->getSdkTag()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcn/sharesdk/loopshare/utils/i;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
