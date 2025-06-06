.class Lcom/google/firebase/messaging/TopicsSyncTask;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/TopicsSyncTask$ConnectivityChangeReceiver;
    }
.end annotation


# static fields
.field private static final TOPIC_SYNC_TASK_LOCK:Ljava/lang/Object;

.field private static hasAccessNetworkStatePermission:Ljava/lang/Boolean;

.field private static hasWakeLockPermission:Ljava/lang/Boolean;


# instance fields
.field private final context:Landroid/content/Context;

.field private final metadata:Lcom/google/firebase/iid/Metadata;

.field private final nextDelaySeconds:J

.field private final syncWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final topicsSubscriber:Lcom/google/firebase/messaging/TopicsSubscriber;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/TopicsSyncTask;->TOPIC_SYNC_TASK_LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 89
    sput-object v0, Lcom/google/firebase/messaging/TopicsSyncTask;->hasWakeLockPermission:Ljava/lang/Boolean;

    .line 90
    sput-object v0, Lcom/google/firebase/messaging/TopicsSyncTask;->hasAccessNetworkStatePermission:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/messaging/TopicsSubscriber;Landroid/content/Context;Lcom/google/firebase/iid/Metadata;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->topicsSubscriber:Lcom/google/firebase/messaging/TopicsSubscriber;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->context:Landroid/content/Context;

    .line 4
    iput-wide p4, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->nextDelaySeconds:J

    .line 5
    iput-object p3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->metadata:Lcom/google/firebase/iid/Metadata;

    const-string p1, "power"

    .line 6
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string p3, "wake:com.google.firebase.messaging"

    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/messaging/TopicsSyncTask;)Z
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/google/firebase/messaging/TopicsSyncTask;->isDeviceConnected()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 85
    invoke-static {}, Lcom/google/firebase/messaging/TopicsSyncTask;->isLoggable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/firebase/messaging/TopicsSyncTask;)Lcom/google/firebase/messaging/TopicsSubscriber;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->topicsSubscriber:Lcom/google/firebase/messaging/TopicsSubscriber;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/firebase/messaging/TopicsSyncTask;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->context:Landroid/content/Context;

    return-object p0
.end method

.method private static createPermissionMissingLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 83
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, 0x8e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Missing Permission: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". This permission should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hasAccessNetworkStatePermission(Landroid/content/Context;)Z
    .locals 3

    .line 69
    sget-object v0, Lcom/google/firebase/messaging/TopicsSyncTask;->TOPIC_SYNC_TASK_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/TopicsSyncTask;->hasAccessNetworkStatePermission:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 71
    sget-object v2, Lcom/google/firebase/messaging/TopicsSyncTask;->hasAccessNetworkStatePermission:Ljava/lang/Boolean;

    invoke-static {p0, v1, v2}, Lcom/google/firebase/messaging/TopicsSyncTask;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p0

    goto :goto_0

    .line 72
    :cond_0
    sget-object p0, Lcom/google/firebase/messaging/TopicsSyncTask;->hasAccessNetworkStatePermission:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 73
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 74
    sput-object p0, Lcom/google/firebase/messaging/TopicsSyncTask;->hasAccessNetworkStatePermission:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    const/4 p2, 0x3

    const-string v0, "FirebaseMessaging"

    .line 80
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 81
    invoke-static {p1}, Lcom/google/firebase/messaging/TopicsSyncTask;->createPermissionMissingLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0
.end method

.method private static hasWakeLockPermission(Landroid/content/Context;)Z
    .locals 3

    .line 62
    sget-object v0, Lcom/google/firebase/messaging/TopicsSyncTask;->TOPIC_SYNC_TASK_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/TopicsSyncTask;->hasWakeLockPermission:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const-string v1, "android.permission.WAKE_LOCK"

    .line 64
    sget-object v2, Lcom/google/firebase/messaging/TopicsSyncTask;->hasWakeLockPermission:Ljava/lang/Boolean;

    invoke-static {p0, v1, v2}, Lcom/google/firebase/messaging/TopicsSyncTask;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p0

    goto :goto_0

    .line 65
    :cond_0
    sget-object p0, Lcom/google/firebase/messaging/TopicsSyncTask;->hasWakeLockPermission:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 66
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 67
    sput-object p0, Lcom/google/firebase/messaging/TopicsSyncTask;->hasWakeLockPermission:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 68
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private declared-synchronized isDeviceConnected()Z
    .locals 2

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static isLoggable()Z
    .locals 4

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_0

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "TopicsSyncTask\'s wakelock was already released due to timeout."

    const-string v1, "FirebaseMessaging"

    .line 9
    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/messaging/TopicsSyncTask;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-wide v3, Lcom/google/firebase/messaging/Constants;->WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS:J

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    const/4 v2, 0x0

    .line 11
    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->topicsSubscriber:Lcom/google/firebase/messaging/TopicsSubscriber;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/firebase/messaging/TopicsSubscriber;->setSyncScheduledOrRunning(Z)V

    .line 12
    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->metadata:Lcom/google/firebase/iid/Metadata;

    invoke-virtual {v3}, Lcom/google/firebase/iid/Metadata;->isGmscorePresent()Z

    move-result v3

    if-nez v3, :cond_2

    .line 13
    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->topicsSubscriber:Lcom/google/firebase/messaging/TopicsSubscriber;

    invoke-virtual {v3, v2}, Lcom/google/firebase/messaging/TopicsSubscriber;->setSyncScheduledOrRunning(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/messaging/TopicsSyncTask;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 18
    :catch_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 20
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/firebase/messaging/TopicsSyncTask;->hasAccessNetworkStatePermission(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 21
    invoke-direct {p0}, Lcom/google/firebase/messaging/TopicsSyncTask;->isDeviceConnected()Z

    move-result v3

    if-nez v3, :cond_4

    .line 22
    new-instance v3, Lcom/google/firebase/messaging/TopicsSyncTask$ConnectivityChangeReceiver;

    invoke-direct {v3, p0, p0}, Lcom/google/firebase/messaging/TopicsSyncTask$ConnectivityChangeReceiver;-><init>(Lcom/google/firebase/messaging/TopicsSyncTask;Lcom/google/firebase/messaging/TopicsSyncTask;)V

    .line 23
    invoke-virtual {v3}, Lcom/google/firebase/messaging/TopicsSyncTask$ConnectivityChangeReceiver;->registerReceiver()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/messaging/TopicsSyncTask;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 25
    :try_start_3
    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    .line 28
    :catch_1
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 30
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->topicsSubscriber:Lcom/google/firebase/messaging/TopicsSubscriber;

    invoke-virtual {v3}, Lcom/google/firebase/messaging/TopicsSubscriber;->syncTopics()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 31
    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->topicsSubscriber:Lcom/google/firebase/messaging/TopicsSubscriber;

    invoke-virtual {v3, v2}, Lcom/google/firebase/messaging/TopicsSubscriber;->setSyncScheduledOrRunning(Z)V

    goto :goto_0

    .line 32
    :cond_5
    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->topicsSubscriber:Lcom/google/firebase/messaging/TopicsSubscriber;

    iget-wide v4, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->nextDelaySeconds:J

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/messaging/TopicsSubscriber;->syncWithDelaySecondsInternal(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 33
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/messaging/TopicsSyncTask;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 34
    :try_start_5
    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    .line 37
    :catch_2
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v3

    :try_start_6
    const-string v4, "Failed to sync topics. Won\'t retry sync. "

    .line 40
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->topicsSubscriber:Lcom/google/firebase/messaging/TopicsSubscriber;

    invoke-virtual {v3, v2}, Lcom/google/firebase/messaging/TopicsSubscriber;->setSyncScheduledOrRunning(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 42
    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/messaging/TopicsSyncTask;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 43
    :try_start_7
    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    return-void

    .line 46
    :catch_4
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    .line 48
    :goto_2
    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/firebase/messaging/TopicsSyncTask;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 49
    :try_start_8
    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    .line 52
    :catch_5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_8
    :goto_3
    throw v2
.end method
