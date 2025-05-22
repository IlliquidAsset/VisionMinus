.class public Lcom/mob/commons/a/b;
.super Lcom/mob/commons/a/d;
.source "ArtClt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/mob/commons/a/d;-><init>()V

    return-void
.end method

.method private a(J)Z
    .locals 19

    const/4 v1, 0x0

    .line 55
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    const-string v2, "usagestats"

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "android.app.usage.UsageStatsManager"

    .line 59
    invoke-static {v2}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "queryUsageStats"

    const/16 v4, 0x15

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v8, 0x1

    if-lt v2, v4, :cond_1

    :try_start_1
    new-array v2, v6, [Ljava/lang/Object;

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v2, v5

    new-array v9, v6, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v1

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v8

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    invoke-static {v0, v3, v2, v9}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 65
    :goto_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-ge v9, v10, :cond_3

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    const-string v9, "mService"

    .line 66
    invoke-static {v0, v9}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v9, 0x4

    new-array v11, v9, [Ljava/lang/Object;

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v5

    const-string v12, "com.android.settings"

    aput-object v12, v11, v6

    new-array v9, v9, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v9, v1

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v9, v8

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v9, v5

    const-class v5, Ljava/lang/String;

    aput-object v5, v9, v6

    .line 67
    invoke-static {v0, v3, v11, v9}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "getList"

    new-array v3, v1, [Ljava/lang/Object;

    .line 71
    invoke-static {v0, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    :cond_3
    if-eqz v2, :cond_12

    .line 74
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_6

    .line 78
    :cond_4
    invoke-static {}, Lcom/mob/commons/i;->e()J

    move-result-wide v5

    .line 79
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v0, v5, v13

    if-lez v0, :cond_5

    cmp-long v0, v11, v5

    if-gez v0, :cond_5

    return v8

    .line 89
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const-string v3, "android.app.usage.UsageStats"

    .line 90
    invoke-static {v3}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sub-int/2addr v0, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ltz v0, :cond_e

    .line 93
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 94
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v4, :cond_d

    const-string v11, "getLastTimeUsed"

    new-array v12, v1, [Ljava/lang/Object;

    .line 95
    invoke-static {v9, v11, v12}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v15, v11, v13

    if-lez v15, :cond_d

    const-string v15, "getPackageName"

    new-array v4, v1, [Ljava/lang/Object;

    .line 97
    invoke-static {v9, v15, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v15, p0

    .line 98
    :try_start_2
    invoke-direct {v15, v3, v4}, Lcom/mob/commons/a/b;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    goto/16 :goto_3

    :cond_6
    if-nez v6, :cond_7

    .line 103
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 105
    :cond_7
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    if-eqz v16, :cond_8

    .line 106
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v18, v16, v11

    if-lez v18, :cond_8

    goto :goto_3

    .line 110
    :cond_8
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "getFirstTimeStamp"

    new-array v13, v1, [Ljava/lang/Object;

    .line 111
    invoke-static {v9, v7, v13}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v13, "getLastTimeStamp"

    new-array v14, v1, [Ljava/lang/Object;

    .line 112
    invoke-static {v9, v13, v14}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const-string v14, "getTotalTimeInForeground"

    new-array v8, v1, [Ljava/lang/Object;

    .line 113
    invoke-static {v9, v14, v8}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 117
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v14, v10, :cond_9

    const-string v14, "mLaunchCount"

    .line 118
    invoke-static {v9, v14}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    const-string v10, "mLastEvent"

    .line 119
    invoke-static {v9, v10}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_2

    :cond_9
    const/4 v9, 0x0

    const/4 v14, 0x0

    .line 121
    :goto_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v1, "packageName"

    .line 122
    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "firstTimeStamp"

    .line 123
    invoke-virtual {v10, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lastTimeStamp"

    .line 124
    invoke-virtual {v10, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lastTimeUsed"

    .line 125
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "totalTimeInForeground"

    .line 126
    invoke-virtual {v10, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v14, :cond_a

    const-string v1, "launchCount"

    .line 128
    invoke-virtual {v10, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-eqz v9, :cond_b

    const-string v1, "lastEvent"

    .line 131
    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    if-nez v5, :cond_c

    .line 134
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v5, v1

    .line 136
    :cond_c
    invoke-virtual {v5, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_d
    move-object/from16 v15, p0

    :goto_3
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/16 v4, 0x15

    const/4 v8, 0x1

    const/16 v10, 0x1c

    const-wide/16 v13, 0x0

    goto/16 :goto_1

    :cond_e
    move-object/from16 v15, p0

    if-eqz v5, :cond_11

    .line 141
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_5

    .line 145
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 149
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 150
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "type"

    const-string v3, "XM_APP_RUNTIMES"

    .line 151
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "list"

    .line 152
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "datetime"

    .line 153
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {}, Lcom/mob/commons/c;->a()Lcom/mob/commons/c;

    move-result-object v0

    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/mob/commons/c;->a(JLjava/util/HashMap;)V

    .line 155
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v0

    add-long v0, v0, p1

    invoke-static {v0, v1}, Lcom/mob/commons/i;->c(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_11
    :goto_5
    const/4 v1, 0x0

    return v1

    :cond_12
    :goto_6
    move-object/from16 v15, p0

    return v1

    :catchall_1
    move-exception v0

    move-object/from16 v15, p0

    .line 159
    :goto_7
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method private a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 166
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 167
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 168
    :goto_0
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 p1, p1, 0x80

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p2, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    :catchall_0
    return v1
.end method


# virtual methods
.method protected a()Ljava/io/File;
    .locals 1

    const-string v0, "comm/locks/.artc_lock"

    .line 27
    invoke-static {v0}, Lcom/mob/commons/e;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/os/Message;)V
    .locals 5

    .line 39
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lcom/mob/commons/b;->D()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    .line 42
    invoke-direct {p0, v1, v2}, Lcom/mob/commons/a/b;->a(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p0, v0, v1, v2}, Lcom/mob/commons/a/b;->a(IJ)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/mob/commons/a/b;->e()V

    :goto_0
    return-void
.end method

.method protected b_()Z
    .locals 5

    .line 31
    invoke-static {}, Lcom/mob/commons/b;->D()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected d()V
    .locals 1

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/b;->b(I)V

    return-void
.end method
