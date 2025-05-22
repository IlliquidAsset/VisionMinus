.class public final Lcom/mob/commons/utag/TagRequester;
.super Ljava/lang/Object;
.source "TagRequester.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/utag/TagRequester$UserTagsResponse;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/mob/tools/utils/DeviceHelper;

.field private static c:Z


# instance fields
.field private d:Lcom/mob/commons/utag/TagRequester$UserTagsResponse;

.field private e:Lcom/mob/commons/utag/UserTagError;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/utag/TagRequester;->b:Lcom/mob/tools/utils/DeviceHelper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/utag/TagRequester;)Lcom/mob/commons/utag/TagRequester$UserTagsResponse;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mob/commons/utag/TagRequester;->d:Lcom/mob/commons/utag/TagRequester$UserTagsResponse;

    return-object p0
.end method

.method static synthetic a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 22
    invoke-static {p0, p1}, Lcom/mob/commons/utag/TagRequester;->b(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()V
    .locals 0

    .line 22
    invoke-static {}, Lcom/mob/commons/utag/TagRequester;->d()V

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 22
    sput-boolean p0, Lcom/mob/commons/utag/TagRequester;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/mob/commons/utag/TagRequester;)Lcom/mob/commons/utag/UserTagError;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mob/commons/utag/TagRequester;->e:Lcom/mob/commons/utag/UserTagError;

    return-object p0
.end method

.method static synthetic b()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 22
    invoke-static {}, Lcom/mob/commons/utag/TagRequester;->e()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 161
    new-instance v0, Lcom/mob/MobCommunicator;

    const/16 v1, 0x400

    const-string v2, "e3e28dce5fe8fc1bb56a25964219d5dc2976edb171b99b1103c2c4f89ad0b66fb58669fe69eb0b5d11e8be990b0715b4de2b4e5a5dcce121f47f18063d5d99f9"

    const-string v3, "256f461cc45979b52264ac022ff1353ea5f8140d35686ffdae2faee09db2006c3b43c2bb74ce6f4c51698db6384c1c0ceca958208d65c7ed345a04ea6349ca39601818c3d5500565ba49ed49c0f4014b06980d17fc069c95d30092d0cfdaddf783ea96c5f8bdc42b6765d71a5d12192ef74646b41d92f1caeba3123e71938d39"

    invoke-direct {v0, v1, v2, v3}, Lcom/mob/MobCommunicator;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 162
    invoke-virtual {v0, p0, p1, v1}, Lcom/mob/MobCommunicator;->requestSynchronized(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic c()Lcom/mob/tools/utils/DeviceHelper;
    .locals 1

    .line 22
    sget-object v0, Lcom/mob/commons/utag/TagRequester;->b:Lcom/mob/tools/utils/DeviceHelper;

    return-object v0
.end method

.method private static declared-synchronized d()V
    .locals 7

    const-class v0, Lcom/mob/commons/utag/TagRequester;

    monitor-enter v0

    .line 73
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->k()Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/mob/commons/utag/TagRequester;->a:Ljava/util/HashMap;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v3, "defHost"

    .line 75
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/mob/commons/utag/TagRequester;->a:Ljava/util/HashMap;

    const-string v3, "defPort"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/mob/commons/utag/TagRequester;->a:Ljava/util/HashMap;

    const-string v3, "defSSLPort"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/mob/commons/utag/TagRequester;->a:Ljava/util/HashMap;

    const-string v3, "tagExpire"

    .line 76
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 86
    invoke-static {}, Lcom/mob/commons/i;->j()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 87
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 90
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 77
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/util/HashMap;)V

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mob/commons/utag/TagRequester;->a:Ljava/util/HashMap;

    const-string v3, "defHost"

    const-string v4, "api.utag.mob.com"

    .line 79
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lcom/mob/commons/utag/TagRequester;->a:Ljava/util/HashMap;

    const-string v3, "defPort"

    const/16 v4, 0x50

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lcom/mob/commons/utag/TagRequester;->a:Ljava/util/HashMap;

    const-string v3, "defSSLPort"

    const/16 v4, 0x1bb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lcom/mob/commons/utag/TagRequester;->a:Ljava/util/HashMap;

    const-string v3, "tagExpire"

    const v4, 0x15180

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 94
    sget-boolean v1, Lcom/mob/commons/utag/TagRequester;->c:Z

    if-nez v1, :cond_2

    .line 95
    sput-boolean v2, Lcom/mob/commons/utag/TagRequester;->c:Z

    .line 96
    new-instance v1, Lcom/mob/commons/utag/TagRequester$3;

    invoke-direct {v1}, Lcom/mob/commons/utag/TagRequester$3;-><init>()V

    .line 116
    invoke-virtual {v1}, Lcom/mob/commons/utag/TagRequester$3;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized e()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcom/mob/commons/utag/TagRequester;

    monitor-enter v0

    .line 121
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->l()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    :cond_0
    sget-object v1, Lcom/mob/commons/utag/TagRequester;->a:Ljava/util/HashMap;

    const-string v2, "defPort"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 125
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 126
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_1

    const-string v1, ""

    goto :goto_0

    .line 127
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 129
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/mob/commons/utag/TagRequester;->a:Ljava/util/HashMap;

    const-string v5, "defHost"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/utag"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/commons/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "duid"

    .line 132
    invoke-static {v2}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorize(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mac"

    .line 133
    sget-object v4, Lcom/mob/commons/utag/TagRequester;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "imei"

    .line 134
    sget-object v4, Lcom/mob/commons/utag/TagRequester;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "serialno"

    .line 135
    sget-object v4, Lcom/mob/commons/utag/TagRequester;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getSerialno()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "model"

    .line 136
    sget-object v4, Lcom/mob/commons/utag/TagRequester;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appkey"

    .line 137
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "apppkg"

    .line 138
    sget-object v4, Lcom/mob/commons/utag/TagRequester;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appver"

    .line 139
    sget-object v4, Lcom/mob/commons/utag/TagRequester;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "plat"

    const/4 v4, 0x1

    .line 140
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {v3, v1}, Lcom/mob/commons/utag/TagRequester;->b(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 145
    :try_start_1
    sget-object v3, Lcom/mob/commons/utag/TagRequester;->a:Ljava/util/HashMap;

    const-string v4, "tagExpire"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 147
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 149
    :goto_1
    invoke-static {v1, v2}, Lcom/mob/commons/i;->a(Ljava/util/HashMap;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized request()V
    .locals 2

    monitor-enter p0

    .line 49
    :try_start_0
    new-instance v0, Lcom/mob/commons/utag/TagRequester$2;

    invoke-direct {v0, p0}, Lcom/mob/commons/utag/TagRequester$2;-><init>(Lcom/mob/commons/utag/TagRequester;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/utag/TagRequester$1;

    invoke-direct {v1, p0}, Lcom/mob/commons/utag/TagRequester$1;-><init>(Lcom/mob/commons/utag/TagRequester;)V

    .line 57
    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOnNewThreadAndObserveOnUIThread(Lcom/mob/tools/RxMob$Subscriber;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whenError(Lcom/mob/commons/utag/UserTagError;)Lcom/mob/commons/utag/TagRequester;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/mob/commons/utag/TagRequester;->e:Lcom/mob/commons/utag/UserTagError;

    return-object p0
.end method

.method public whenSuccess(Lcom/mob/commons/utag/TagRequester$UserTagsResponse;)Lcom/mob/commons/utag/TagRequester;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/mob/commons/utag/TagRequester;->d:Lcom/mob/commons/utag/TagRequester$UserTagsResponse;

    return-object p0
.end method
