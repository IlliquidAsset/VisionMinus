.class public Lcom/umeng/analytics/vshelper/PageNameMonitor;
.super Ljava/lang/Object;
.source "PageNameMonitor.java"

# interfaces
.implements Lcom/umeng/analytics/vshelper/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/vshelper/PageNameMonitor$a;
    }
.end annotation


# static fields
.field private static currentActivity:Ljava/lang/String;

.field private static currentCustomPage:Ljava/lang/String;

.field private static lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/vshelper/PageNameMonitor$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/umeng/analytics/vshelper/PageNameMonitor;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/umeng/analytics/vshelper/PageNameMonitor;
    .locals 1

    .line 18
    invoke-static {}, Lcom/umeng/analytics/vshelper/PageNameMonitor$a;->a()Lcom/umeng/analytics/vshelper/PageNameMonitor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public activityPause(Ljava/lang/String;)V
    .locals 1

    .line 30
    sget-object p1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 31
    :try_start_0
    sput-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentActivity:Ljava/lang/String;

    .line 32
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public activityResume(Ljava/lang/String;)V
    .locals 1

    .line 23
    sget-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_0
    sput-object p1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentActivity:Ljava/lang/String;

    .line 25
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public customPageBegin(Ljava/lang/String;)V
    .locals 1

    .line 37
    sget-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    sput-object p1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentCustomPage:Ljava/lang/String;

    .line 39
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public customPageEnd(Ljava/lang/String;)V
    .locals 1

    .line 44
    sget-object p1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 45
    :try_start_0
    sput-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentCustomPage:Ljava/lang/String;

    .line 46
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrenPageName()Ljava/lang/String;
    .locals 2

    .line 57
    sget-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentCustomPage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentCustomPage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 60
    :cond_0
    sget-object v1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentActivity:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 61
    sget-object v1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentActivity:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 63
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
