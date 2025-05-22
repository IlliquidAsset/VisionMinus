.class public Lcn/sharesdk/sina/weibo/c;
.super Ljava/lang/Object;
.source "SinaLinkCardLog.java"


# static fields
.field private static volatile a:Lcn/sharesdk/sina/weibo/c;


# instance fields
.field private b:Lcom/mob/MobCommunicator;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/c;->c:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcn/sharesdk/sina/weibo/c;
    .locals 2

    .line 45
    const-class v0, Lcn/sharesdk/sina/weibo/c;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/c;

    if-nez v1, :cond_1

    .line 47
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    sget-object v1, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/c;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcn/sharesdk/sina/weibo/c;

    invoke-direct {v1}, Lcn/sharesdk/sina/weibo/c;-><init>()V

    sput-object v1, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/c;

    .line 51
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

    .line 53
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    sget-object v0, Lcn/sharesdk/sina/weibo/c;->a:Lcn/sharesdk/sina/weibo/c;

    return-object v0

    :catchall_1
    move-exception v1

    .line 53
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/c;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcn/sharesdk/sina/weibo/c;)J
    .locals 2

    .line 14
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/c;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized b()Lcom/mob/MobCommunicator;
    .locals 4

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->b:Lcom/mob/MobCommunicator;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/mob/MobCommunicator;

    const/16 v1, 0x3fd

    const-string v2, "009cbd92ccef123be840deec0c6ed0547194c1e471d11b6f375e56038458fb18833e5bab2e1206b261495d7e2d1d9e5aa859e6d4b671a8ca5d78efede48e291a3f"

    const-string v3, "1dfd1d615cb891ce9a76f42d036af7fce5f8b8efaa11b2f42590ecc4ea4cff28f5f6b0726aeb76254ab5b02a58c1d5b486c39d9da1a58fa6ba2f22196493b3a4cbc283dcf749bf63679ee24d185de70c8dfe05605886c9b53e9f569082eabdf98c4fb0dcf07eb9bb3e647903489ff0b5d933bd004af5be4a1022fdda41f347f1"

    invoke-direct {v0, v1, v2, v3}, Lcom/mob/MobCommunicator;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/c;->b:Lcom/mob/MobCommunicator;

    .line 41
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/c;->b:Lcom/mob/MobCommunicator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()J
    .locals 2

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c(Lcn/sharesdk/sina/weibo/c;)Lcom/mob/MobCommunicator;
    .locals 0

    .line 14
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/c;->b()Lcom/mob/MobCommunicator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 58
    new-instance v0, Lcn/sharesdk/sina/weibo/c$1;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/sina/weibo/c$1;-><init>(Lcn/sharesdk/sina/weibo/c;I)V

    .line 72
    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/c$1;->start()V

    return-void
.end method
