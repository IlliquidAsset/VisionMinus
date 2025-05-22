.class public Lcom/mob/tools/utils/ActivityTracker;
.super Ljava/lang/Object;
.source "ActivityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/ActivityTracker$EachTracker;,
        Lcom/mob/tools/utils/ActivityTracker$Tracker;
    }
.end annotation


# static fields
.field private static instance:Lcom/mob/tools/utils/ActivityTracker;


# instance fields
.field private trackers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/mob/tools/utils/ActivityTracker$Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/ActivityTracker;->trackers:Ljava/util/HashSet;

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 20
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/ActivityTracker;->initLevel14(Landroid/content/Context;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/ActivityTracker;->init(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/ActivityTracker;->onCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/ActivityTracker;->onStarted(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/ActivityTracker;->onResumed(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/ActivityTracker;->onPaused(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/ActivityTracker;->onStopped(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/ActivityTracker;->onDestroyed(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/ActivityTracker;->onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method private eachTracker(Lcom/mob/tools/utils/ActivityTracker$EachTracker;)V
    .locals 4

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker;->trackers:Ljava/util/HashSet;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 169
    :try_start_1
    iget-object v1, p0, Lcom/mob/tools/utils/ActivityTracker;->trackers:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/mob/tools/utils/ActivityTracker;->trackers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/mob/tools/utils/ActivityTracker$Tracker;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/mob/tools/utils/ActivityTracker$Tracker;

    .line 170
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :try_start_2
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 173
    invoke-interface {p1, v3}, Lcom/mob/tools/utils/ActivityTracker$EachTracker;->each(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 170
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 177
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/ActivityTracker;
    .locals 2

    const-class v0, Lcom/mob/tools/utils/ActivityTracker;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/ActivityTracker;->instance:Lcom/mob/tools/utils/ActivityTracker;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/mob/tools/utils/ActivityTracker;

    invoke-direct {v1, p0}, Lcom/mob/tools/utils/ActivityTracker;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/tools/utils/ActivityTracker;->instance:Lcom/mob/tools/utils/ActivityTracker;

    .line 30
    :cond_0
    sget-object p0, Lcom/mob/tools/utils/ActivityTracker;->instance:Lcom/mob/tools/utils/ActivityTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const-string v0, "mInstrumentation"

    .line 74
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    invoke-static {}, Lcom/mob/tools/utils/DeviceHelper;->currentActivityThread()Ljava/lang/Object;

    move-result-object p1

    .line 75
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 76
    new-instance v2, Lcom/mob/tools/utils/ActivityTracker$2;

    invoke-direct {v2, p0, v1}, Lcom/mob/tools/utils/ActivityTracker$2;-><init>(Lcom/mob/tools/utils/ActivityTracker;Ljava/lang/Object;)V

    invoke-static {p1, v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->setInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 149
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private initLevel14(Landroid/content/Context;)V
    .locals 1

    .line 36
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    new-instance v0, Lcom/mob/tools/utils/ActivityTracker$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/ActivityTracker$1;-><init>(Lcom/mob/tools/utils/ActivityTracker;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 67
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private onCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 182
    new-instance v0, Lcom/mob/tools/utils/ActivityTracker$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/mob/tools/utils/ActivityTracker$3;-><init>(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/ActivityTracker;->eachTracker(Lcom/mob/tools/utils/ActivityTracker$EachTracker;)V

    return-void
.end method

.method private onDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 222
    new-instance v0, Lcom/mob/tools/utils/ActivityTracker$8;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/utils/ActivityTracker$8;-><init>(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/ActivityTracker;->eachTracker(Lcom/mob/tools/utils/ActivityTracker$EachTracker;)V

    return-void
.end method

.method private onPaused(Landroid/app/Activity;)V
    .locals 1

    .line 206
    new-instance v0, Lcom/mob/tools/utils/ActivityTracker$6;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/utils/ActivityTracker$6;-><init>(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/ActivityTracker;->eachTracker(Lcom/mob/tools/utils/ActivityTracker$EachTracker;)V

    return-void
.end method

.method private onResumed(Landroid/app/Activity;)V
    .locals 1

    .line 198
    new-instance v0, Lcom/mob/tools/utils/ActivityTracker$5;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/utils/ActivityTracker$5;-><init>(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/ActivityTracker;->eachTracker(Lcom/mob/tools/utils/ActivityTracker$EachTracker;)V

    return-void
.end method

.method private onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 230
    new-instance v0, Lcom/mob/tools/utils/ActivityTracker$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/mob/tools/utils/ActivityTracker$9;-><init>(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/ActivityTracker;->eachTracker(Lcom/mob/tools/utils/ActivityTracker$EachTracker;)V

    return-void
.end method

.method private onStarted(Landroid/app/Activity;)V
    .locals 1

    .line 190
    new-instance v0, Lcom/mob/tools/utils/ActivityTracker$4;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/utils/ActivityTracker$4;-><init>(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/ActivityTracker;->eachTracker(Lcom/mob/tools/utils/ActivityTracker$EachTracker;)V

    return-void
.end method

.method private onStopped(Landroid/app/Activity;)V
    .locals 1

    .line 214
    new-instance v0, Lcom/mob/tools/utils/ActivityTracker$7;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/utils/ActivityTracker$7;-><init>(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/ActivityTracker;->eachTracker(Lcom/mob/tools/utils/ActivityTracker$EachTracker;)V

    return-void
.end method


# virtual methods
.method public addTracker(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker;->trackers:Ljava/util/HashSet;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/ActivityTracker;->trackers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeTracker(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker;->trackers:Ljava/util/HashSet;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/ActivityTracker;->trackers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 162
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
