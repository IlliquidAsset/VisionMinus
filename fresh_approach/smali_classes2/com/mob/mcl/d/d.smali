.class public Lcom/mob/mcl/d/d;
.super Ljava/lang/Object;
.source "SpHelper.java"


# static fields
.field private static a:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method private static a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mob/mcl/d/d;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mob/mcl/d/d;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const/4 v1, 0x0

    const-string v2, "mcl"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized a(J)V
    .locals 2

    const-class v0, Lcom/mob/mcl/d/d;

    monitor-enter v0

    .line 8
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/d/d;->a()V

    .line 9
    sget-object v1, Lcom/mob/mcl/d/d;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "create_suid_time"

    invoke-virtual {v1, p1, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/mob/mcl/d/d;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/d/d;->a()V

    .line 5
    sget-object v1, Lcom/mob/mcl/d/d;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "tcp_config"

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Z)V
    .locals 3

    const-class v0, Lcom/mob/mcl/d/d;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/d/d;->a()V

    .line 7
    sget-object v1, Lcom/mob/mcl/d/d;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v2, "use_config"

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/mob/mcl/d/d;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/d/d;->a()V

    .line 2
    sget-object v1, Lcom/mob/mcl/d/d;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "tcp_config"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/mob/mcl/d/d;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/d/d;->a()V

    .line 4
    sget-object v1, Lcom/mob/mcl/d/d;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "suid"

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/mob/mcl/d/d;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/d/d;->a()V

    .line 2
    sget-object v1, Lcom/mob/mcl/d/d;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "suid"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d()J
    .locals 3

    const-class v0, Lcom/mob/mcl/d/d;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/d/d;->a()V

    .line 2
    sget-object v1, Lcom/mob/mcl/d/d;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "create_suid_time"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized e()Z
    .locals 4

    const-class v0, Lcom/mob/mcl/d/d;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/d/d;->a()V

    .line 2
    sget-object v1, Lcom/mob/mcl/d/d;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "use_config"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getBoolean(Ljava/lang/String;Z)Z

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
