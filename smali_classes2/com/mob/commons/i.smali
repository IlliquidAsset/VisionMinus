.class public Lcom/mob/commons/i;
.super Ljava/lang/Object;
.source "ProcessLevelSPDB.java"


# static fields
.field private static volatile a:Z = false

.field private static b:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized A()Z
    .locals 4

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 473
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 475
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_pp_ncsy"

    invoke-static {}, Lcom/mob/MobSDK;->checkPpNecessary()Z

    move-result v3

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

.method public static declared-synchronized B()I
    .locals 4

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 484
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 486
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_pp_grtd"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getInt(Ljava/lang/String;I)I

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

.method public static declared-synchronized C()I
    .locals 4

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 506
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 508
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_pprfms"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getInt(Ljava/lang/String;I)I

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

.method public static declared-synchronized D()I
    .locals 4

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 517
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 519
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_pprdms"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getInt(Ljava/lang/String;I)I

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

.method public static declared-synchronized E()Ljava/lang/Boolean;
    .locals 4

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 566
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 569
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_re_upload_policy_grant_result"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 571
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 573
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 577
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized F()J
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 581
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 582
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_next_request_duid_time"

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

.method public static declared-synchronized G()J
    .locals 5

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 591
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 592
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_first_launch_time"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;J)J

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

.method public static declared-synchronized H()J
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 601
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 602
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_next_dev_ext_var_upload_time"

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

.method public static I()V
    .locals 1

    .line 611
    sget-boolean v0, Lcom/mob/commons/i;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 614
    sput-boolean v0, Lcom/mob/commons/i;->a:Z

    .line 615
    new-instance v0, Lcom/mob/commons/i$1;

    invoke-direct {v0}, Lcom/mob/commons/i$1;-><init>()V

    .line 640
    invoke-virtual {v0}, Lcom/mob/commons/i$1;->start()V

    return-void
.end method

.method private static declared-synchronized J()V
    .locals 2

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    const/4 v1, 0x0

    .line 69
    :try_start_0
    invoke-static {v1}, Lcom/mob/commons/i;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static K()Ljava/lang/String;
    .locals 1

    .line 177
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 80
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 81
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_ext_info"

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

.method public static declared-synchronized a(I)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 428
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 429
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_policy_txt_related_version"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(J)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 95
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 96
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "wifi_last_time"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/Boolean;)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 549
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 558
    :goto_0
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_re_upload_policy_grant_result"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 85
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 86
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_ext_info"

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 233
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    if-nez p0, :cond_0

    .line 235
    sget-object p0, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "key_utag_config"

    invoke-virtual {p0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_0
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_utag_config"

    new-instance v3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v3, p0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object p0, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "key_last_utag_config"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/util/HashMap;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 257
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 258
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_utags_buffer_time"

    new-instance v3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v3, p0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object p0, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "key_utags_buffer_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Z)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 468
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 469
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_pp_ncsy"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 100
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 101
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "wifi_last_info"

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

.method public static declared-synchronized b(I)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 448
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 449
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_policy_url_related_version"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(J)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 125
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 126
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_cellinfo_next_total"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 105
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 106
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "wifi_last_info"

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 365
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    if-eqz p0, :cond_2

    .line 366
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_2

    .line 368
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 369
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    .line 371
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 374
    :cond_1
    sget-object p0, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_app_active_time"

    new-instance v3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v3, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 376
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "Parse String error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_1

    .line 379
    :cond_2
    sget-object p0, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "key_app_active_time"

    invoke-virtual {p0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->remove(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 381
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized b(Z)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_1

    .line 74
    :cond_0
    new-instance p0, Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "mob_commons"

    const/4 v2, 0x1

    .line 75
    invoke-virtual {p0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 115
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 116
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_cellinfo"

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

.method public static declared-synchronized c(I)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 479
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 480
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_pp_grtd"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(J)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 135
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 136
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_art_next_total"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 110
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 111
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_cellinfo"

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 393
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 394
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_channels"

    new-instance v3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v3, p0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized d()J
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 120
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 121
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_cellinfo_next_total"

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

.method public static declared-synchronized d(I)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 501
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 502
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_pprfms"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized d(J)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 278
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 279
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_backend_time"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized d(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 140
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 148
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 150
    :try_start_1
    invoke-static {}, Lcom/mob/commons/i;->K()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v1, p0}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 152
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 154
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 157
    :cond_0
    :goto_0
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_switches"

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized e()J
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 130
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 131
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_art_next_total"

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

.method public static declared-synchronized e(I)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 512
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 513
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_pprdms"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized e(J)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 298
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 299
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_next_dev_ext_info_upload_time"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized e(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 181
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    if-nez p0, :cond_0

    .line 183
    sget-object p0, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "key_data_url"

    invoke-virtual {p0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_0
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_data_url"

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized f()Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 161
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 162
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_switches"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    .line 166
    :try_start_1
    invoke-static {}, Lcom/mob/commons/i;->K()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 167
    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 168
    invoke-static {v2, v3}, Lcom/mob/tools/utils/Data;->AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 170
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized f(I)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 523
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 524
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_pprsbs"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized f(J)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 308
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 309
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_next_upload_wifi_list_time"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized f(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 195
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    if-nez p0, :cond_0

    .line 197
    sget-object p0, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "key_conf_url"

    invoke-virtual {p0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_0
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_conf_url"

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized g()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 190
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 191
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_data_url"

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

.method public static declared-synchronized g(I)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 534
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 535
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_pprspw"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized g(J)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 328
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 329
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_next_upload_buffered_location_time"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized g(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 214
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 215
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_wifi_list_hash"

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized h()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 204
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 205
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_conf_url"

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

.method public static declared-synchronized h(J)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 338
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 339
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_next_upload_app_active_time"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized h(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 268
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 269
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_simulator_info_md5"

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized i()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 209
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 210
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_wifi_list_hash"

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

.method public static declared-synchronized i(J)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 586
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 587
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_next_request_duid_time"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized i(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 288
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 289
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_lduid"

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized j()J
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 219
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 220
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_last_utag_config"

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

.method public static declared-synchronized j(J)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 596
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 597
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_first_launch_time"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized j(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 313
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 314
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_buffered_location_md5"

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized k()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 224
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 225
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_utag_config"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 227
    monitor-exit v0

    return-object v1

    .line 229
    :cond_0
    :try_start_1
    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

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

.method public static declared-synchronized k(J)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 606
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 607
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_next_dev_ext_var_upload_time"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized k(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 418
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 419
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_privacy_policy_txt"

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized l()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 243
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 244
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_utags_buffer_time"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    cmp-long v6, v3, v1

    if-lez v6, :cond_0

    .line 246
    monitor-exit v0

    return-object v5

    .line 249
    :cond_0
    :try_start_1
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_utags"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 251
    monitor-exit v0

    return-object v5

    .line 253
    :cond_1
    :try_start_2
    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized l(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 438
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 439
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_privacy_policy_url"

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized m()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 263
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 264
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_simulator_info_md5"

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

.method public static declared-synchronized m(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 458
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 459
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_privacy_policy_language"

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized n()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 283
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 284
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_lduid"

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

.method public static declared-synchronized o()J
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 293
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 294
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_next_dev_ext_info_upload_time"

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

.method public static declared-synchronized p()J
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 303
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 304
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_next_upload_wifi_list_time"

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

.method public static declared-synchronized q()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 318
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 319
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_buffered_location_md5"

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

.method public static declared-synchronized r()J
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 323
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 324
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_next_upload_buffered_location_time"

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

.method public static declared-synchronized s()J
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 333
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 334
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_next_upload_app_active_time"

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

.method public static declared-synchronized t()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 343
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 344
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_app_active_time"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 346
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_0

    .line 347
    monitor-exit v0

    return-object v2

    .line 349
    :cond_0
    :try_start_1
    new-instance v3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v3, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 350
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 351
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    .line 354
    :try_start_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 356
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    const-string v5, "Parse long error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 361
    :cond_2
    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized u()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 384
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 385
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_channels"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 387
    monitor-exit v0

    return-object v1

    .line 389
    :cond_0
    :try_start_1
    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v2, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

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

.method public static declared-synchronized v()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 423
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 424
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_privacy_policy_txt"

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

.method public static declared-synchronized w()I
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 433
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 434
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_policy_txt_related_version"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getInt(Ljava/lang/String;)I

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

.method public static declared-synchronized x()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 443
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 444
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_privacy_policy_url"

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

.method public static declared-synchronized y()I
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 453
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 454
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_policy_url_related_version"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getInt(Ljava/lang/String;)I

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

.method public static declared-synchronized z()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/mob/commons/i;

    monitor-enter v0

    .line 463
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->J()V

    .line 464
    sget-object v1, Lcom/mob/commons/i;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "key_privacy_policy_language"

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
