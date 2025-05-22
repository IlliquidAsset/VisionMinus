.class public Lcn/sharesdk/framework/loopshare/MobLinkAPI;
.super Ljava/lang/Object;
.source "MobLinkAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/loopshare/MobLinkAPI$SceneListener;
    }
.end annotation


# static fields
.field private static a:Lcn/sharesdk/framework/loopshare/MoblinkActionListener;

.field private static b:Lcn/sharesdk/framework/loopshare/LoopShareResultListener;

.field private static volatile c:Lcn/sharesdk/framework/loopshare/MobLinkAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcn/sharesdk/framework/loopshare/MobLinkAPI;
    .locals 2

    .line 28
    const-class v0, Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->c:Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    if-nez v1, :cond_1

    .line 30
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    sget-object v1, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->c:Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    invoke-direct {v1}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;-><init>()V

    sput-object v1, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->c:Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 36
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 37
    sget-object v0, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->c:Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    return-object v0

    :catchall_1
    move-exception v1

    .line 36
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method static synthetic a(Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)Lcn/sharesdk/framework/loopshare/MoblinkActionListener;
    .locals 0

    .line 20
    sput-object p0, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a:Lcn/sharesdk/framework/loopshare/MoblinkActionListener;

    return-object p0
.end method

.method public static a(Lcn/sharesdk/framework/loopshare/LoopShareResultListener;)V
    .locals 0

    .line 45
    sput-object p0, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->b:Lcn/sharesdk/framework/loopshare/LoopShareResultListener;

    return-void
.end method

.method public static a(Ljava/util/HashMap;Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/sharesdk/framework/loopshare/MoblinkActionListener;",
            ")V"
        }
    .end annotation

    const-string v0, "params"

    if-eqz p1, :cond_2

    .line 51
    :try_start_0
    sput-object p1, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a:Lcn/sharesdk/framework/loopshare/MoblinkActionListener;

    .line 52
    new-instance p1, Lcn/sharesdk/loopshare/Scene;

    invoke-direct {p1}, Lcn/sharesdk/loopshare/Scene;-><init>()V

    const-string v1, "path"

    .line 53
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/loopshare/Scene;->setPath(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Lcn/sharesdk/loopshare/Scene;->setParams(Ljava/util/HashMap;)V

    goto :goto_0

    .line 56
    :cond_0
    sget-object p0, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a:Lcn/sharesdk/framework/loopshare/MoblinkActionListener;

    if-eqz p0, :cond_1

    .line 57
    new-instance p0, Ljava/lang/Throwable;

    const-string p1, "setLoopshareCustomParams\u65b9\u6cd5\u4e2d params \u4e3akey\u7684\u65f6\u5019\uff0cvalue\u9700\u8981\u4e3aHashMap\u7c7b\u578b"

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 59
    sget-object p1, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a:Lcn/sharesdk/framework/loopshare/MoblinkActionListener;

    invoke-interface {p1, p0}, Lcn/sharesdk/framework/loopshare/MoblinkActionListener;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 64
    :cond_1
    :goto_0
    new-instance p0, Lcn/sharesdk/framework/loopshare/MobLinkAPI$1;

    invoke-direct {p0}, Lcn/sharesdk/framework/loopshare/MobLinkAPI$1;-><init>()V

    invoke-static {p1, p0}, Lcn/sharesdk/loopshare/MobLink;->getMobID(Lcn/sharesdk/loopshare/Scene;Lcn/sharesdk/loopshare/ActionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 83
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoopShare MobLinkAPI mobLinkGetMobID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static b()Lcn/sharesdk/framework/loopshare/LoopShareResultListener;
    .locals 1

    .line 41
    sget-object v0, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->b:Lcn/sharesdk/framework/loopshare/LoopShareResultListener;

    return-object v0
.end method

.method public static b(Lcn/sharesdk/framework/loopshare/LoopShareResultListener;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 90
    :try_start_0
    invoke-static {p0}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a(Lcn/sharesdk/framework/loopshare/LoopShareResultListener;)V

    :cond_0
    const-string p0, "sdfwe435fdsr34656uthfwer32ufeh439=="

    .line 94
    new-instance v1, Lcn/sharesdk/framework/loopshare/MobLinkAPI$SceneListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/sharesdk/framework/loopshare/MobLinkAPI$SceneListener;-><init>(Lcn/sharesdk/framework/loopshare/MobLinkAPI$1;)V

    invoke-static {p0, v1}, Lcn/sharesdk/loopshare/MobLink;->registerSpecifiedSchemeListener(Ljava/lang/String;Lcn/sharesdk/loopshare/RestoreSceneListener;)V

    .line 96
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p0

    const-string v1, "LoopShare MobLinkAPI prepareLoopShare is OK"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 98
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoopShare MobLinkAPI prepareLoopShare "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static c()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 104
    :try_start_0
    new-instance v0, Lcn/sharesdk/framework/loopshare/a;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sharesdk_moblink_sp"

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/framework/loopshare/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "share_restore_extra"

    const/4 v2, 0x0

    .line 105
    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/loopshare/a;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 112
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoopShare MobLinkAPI getCustomDataFromLoopShare "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 114
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static synthetic d()Lcn/sharesdk/framework/loopshare/MoblinkActionListener;
    .locals 1

    .line 20
    sget-object v0, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a:Lcn/sharesdk/framework/loopshare/MoblinkActionListener;

    return-object v0
.end method
