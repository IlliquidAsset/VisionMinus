.class final Lcom/google/firebase/messaging/TopicsStore;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.0.0"


# static fields
.field private static topicsStoreWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/messaging/TopicsStore;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final syncExecutor:Ljava/util/concurrent/Executor;

.field private topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;


# direct methods
.method private constructor <init>(Landroid/content/SharedPreferences;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/firebase/messaging/TopicsStore;->syncExecutor:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/messaging/TopicsStore;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/firebase/messaging/TopicsStore;
    .locals 3

    const-class v0, Lcom/google/firebase/messaging/TopicsStore;

    monitor-enter v0

    const/4 v1, 0x0

    .line 9
    :try_start_0
    sget-object v2, Lcom/google/firebase/messaging/TopicsStore;->topicsStoreWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 10
    sget-object v1, Lcom/google/firebase/messaging/TopicsStore;->topicsStoreWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/messaging/TopicsStore;

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "com.google.android.gms.appid"

    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 14
    new-instance v1, Lcom/google/firebase/messaging/TopicsStore;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/messaging/TopicsStore;-><init>(Landroid/content/SharedPreferences;Ljava/util/concurrent/Executor;)V

    .line 15
    invoke-direct {v1}, Lcom/google/firebase/messaging/TopicsStore;->initStore()V

    .line 16
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/google/firebase/messaging/TopicsStore;->topicsStoreWeakReference:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final declared-synchronized initStore()V
    .locals 4

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "topic_operation_queue"

    const-string v2, ","

    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsStore;->syncExecutor:Ljava/util/concurrent/Executor;

    .line 6
    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->createInstance(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/firebase/messaging/SharedPreferencesQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized addTopicOperation(Lcom/google/firebase/messaging/TopicOperation;)Z
    .locals 1

    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicOperation;->serialize()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->add(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized getNextTopicOperation()Lcom/google/firebase/messaging/TopicOperation;
    .locals 1

    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->peek()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/google/firebase/messaging/TopicOperation;->from(Ljava/lang/String;)Lcom/google/firebase/messaging/TopicOperation;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized removeTopicOperation(Lcom/google/firebase/messaging/TopicOperation;)Z
    .locals 1

    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicOperation;->serialize()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
