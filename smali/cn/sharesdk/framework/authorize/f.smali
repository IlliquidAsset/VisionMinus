.class public Lcn/sharesdk/framework/authorize/f;
.super Ljava/lang/Object;
.source "SdkPlusTags.java"


# static fields
.field private static volatile a:Lcn/sharesdk/framework/authorize/f;


# instance fields
.field private b:Lcom/mob/MobCommunicator;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/mob/tools/utils/DeviceHelper;

.field private f:Lcn/sharesdk/framework/a/b;

.field private g:Z

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcn/sharesdk/framework/authorize/f;->g:Z

    .line 36
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/f;->e:Lcom/mob/tools/utils/DeviceHelper;

    .line 37
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/f;->c:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/f;->e:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/f;->d:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcn/sharesdk/framework/a/b;->a()Lcn/sharesdk/framework/a/b;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/f;->f:Lcn/sharesdk/framework/a/b;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/f;->e:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 109
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "%s:%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/lang/String;)[B

    move-result-object v0

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mob/tools/utils/Data;->AES128Encode([BLjava/lang/String;)[B

    move-result-object p1

    .line 111
    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static c()Lcn/sharesdk/framework/authorize/f;
    .locals 2

    .line 62
    const-class v0, Lcn/sharesdk/framework/authorize/f;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcn/sharesdk/framework/authorize/f;->a:Lcn/sharesdk/framework/authorize/f;

    if-nez v1, :cond_1

    .line 64
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    :try_start_1
    sget-object v1, Lcn/sharesdk/framework/authorize/f;->a:Lcn/sharesdk/framework/authorize/f;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcn/sharesdk/framework/authorize/f;

    invoke-direct {v1}, Lcn/sharesdk/framework/authorize/f;-><init>()V

    sput-object v1, Lcn/sharesdk/framework/authorize/f;->a:Lcn/sharesdk/framework/authorize/f;

    .line 68
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

    .line 70
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    sget-object v0, Lcn/sharesdk/framework/authorize/f;->a:Lcn/sharesdk/framework/authorize/f;

    return-object v0

    :catchall_1
    move-exception v1

    .line 70
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private declared-synchronized e()Lcom/mob/MobCommunicator;
    .locals 4

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/f;->b:Lcom/mob/MobCommunicator;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/mob/MobCommunicator;

    const/16 v1, 0x400

    const-string v2, "009cbd92ccef123be840deec0c6ed0547194c1e471d11b6f375e56038458fb18833e5bab2e1206b261495d7e2d1d9e5aa859e6d4b671a8ca5d78efede48e291a3f"

    const-string v3, "1dfd1d615cb891ce9a76f42d036af7fce5f8b8efaa11b2f42590ecc4ea4cff28f5f6b0726aeb76254ab5b02a58c1d5b486c39d9da1a58fa6ba2f22196493b3a4cbc283dcf749bf63679ee24d185de70c8dfe05605886c9b53e9f569082eabdf98c4fb0dcf07eb9bb3e647903489ff0b5d933bd004af5be4a1022fdda41f347f1"

    invoke-direct {v0, v1, v2, v3}, Lcom/mob/MobCommunicator;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/f;->b:Lcom/mob/MobCommunicator;

    .line 58
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/f;->b:Lcom/mob/MobCommunicator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcn/sharesdk/framework/authorize/f;->g:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcn/sharesdk/framework/authorize/f;->g:Z

    return v0
.end method

.method public b()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/f;->h:Ljava/util/HashMap;

    return-object v0
.end method

.method public d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 82
    invoke-static {}, Lcn/sharesdk/framework/b/a/e;->a()Lcn/sharesdk/framework/b/a/e;

    move-result-object v0

    .line 84
    iget-boolean v1, p0, Lcn/sharesdk/framework/authorize/f;->g:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->g()Z

    move-result v0

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "Content-type"

    const-string v3, "application/json"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/framework/authorize/f;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/framework/authorize/f;->d:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcn/sharesdk/framework/authorize/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sign"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/f;->c:Ljava/lang/String;

    const-string v2, "appkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/f;->d:Ljava/lang/String;

    const-string v2, "deviceId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v1, Lcom/mob/commons/SHARESDK;

    invoke-direct {v1}, Lcom/mob/commons/SHARESDK;-><init>()V

    invoke-static {v1}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorize(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "duid"

    .line 98
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :try_start_0
    invoke-direct {p0}, Lcn/sharesdk/framework/authorize/f;->e()Lcom/mob/MobCommunicator;

    move-result-object v1

    const-string v2, "http://p.share.mob.com/tags/getTagList"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/mob/MobCommunicator;->requestSynchronized(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/f;->h:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
