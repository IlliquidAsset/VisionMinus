.class public Lcom/mob/commons/a/m;
.super Ljava/lang/Object;
.source "FBManager.java"


# static fields
.field private static a:Lcom/mob/commons/a/m;


# instance fields
.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/mob/commons/FBListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Landroid/os/Handler;

.field private d:Ljava/lang/String;

.field private e:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/a/m;->b:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/mob/commons/a/m;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lcom/mob/commons/a/m;->e:J

    .line 83
    new-instance v0, Lcom/mob/commons/a/m$1;

    invoke-direct {v0, p0}, Lcom/mob/commons/a/m$1;-><init>(Lcom/mob/commons/a/m;)V

    invoke-static {v0}, Lcom/mob/tools/MobHandlerThread;->newHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/a/m;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/a/m;J)J
    .locals 0

    .line 20
    iput-wide p1, p0, Lcom/mob/commons/a/m;->e:J

    return-wide p1
.end method

.method public static declared-synchronized a()Lcom/mob/commons/a/m;
    .locals 3

    const-class v0, Lcom/mob/commons/a/m;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/mob/commons/a/m;->a:Lcom/mob/commons/a/m;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/mob/commons/a/m;

    invoke-direct {v1}, Lcom/mob/commons/a/m;-><init>()V

    sput-object v1, Lcom/mob/commons/a/m;->a:Lcom/mob/commons/a/m;

    .line 35
    iget-object v1, v1, Lcom/mob/commons/a/m;->c:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 36
    sget-object v1, Lcom/mob/commons/a/m;->a:Lcom/mob/commons/a/m;

    iget-object v1, v1, Lcom/mob/commons/a/m;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 39
    :cond_0
    sget-object v1, Lcom/mob/commons/a/m;->a:Lcom/mob/commons/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/mob/commons/a/m;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/mob/commons/a/m;->d:Ljava/lang/String;

    return-object p1
.end method

.method private a(JZ)V
    .locals 3

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mob/commons/b;->a(JZ)V

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 135
    invoke-direct {p0, p3, p3, p1, p2}, Lcom/mob/commons/a/m;->a(ZZJ)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mob/commons/a/m;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/mob/commons/a/m;->b()V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/a/m;JZ)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/mob/commons/a/m;->a(JZ)V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/a/m;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/mob/commons/a/m;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    .line 123
    invoke-static {v0, v1, v2}, Lcom/mob/commons/b;->a(JZ)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 125
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/mob/commons/a/m;->a(ZZJ)V

    :cond_0
    return-void
.end method

.method private a(ZZJ)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/mob/commons/a/m;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/a/m;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mob/commons/FBListener;

    .line 142
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mob/commons/FBListener;->onFBChanged(ZZJ)V

    goto :goto_0

    .line 144
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/mob/commons/a/m;)Ljava/util/HashSet;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/mob/commons/a/m;->b:Ljava/util/HashSet;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 148
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ActivityTracker;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/ActivityTracker;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/a/m$2;

    invoke-direct {v1, p0}, Lcom/mob/commons/a/m$2;-><init>(Lcom/mob/commons/a/m;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/ActivityTracker;->addTracker(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V

    return-void
.end method

.method static synthetic c(Lcom/mob/commons/a/m;)J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/mob/commons/a/m;->e:J

    return-wide v0
.end method

.method static synthetic d(Lcom/mob/commons/a/m;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/mob/commons/a/m;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/mob/commons/a/m;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/mob/commons/a/m;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mob/commons/FBListener;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/a/m;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/a/m;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    monitor-exit v0

    return-void

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/mob/commons/a/m;->c:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 56
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x3

    .line 57
    iput v2, v1, Landroid/os/Message;->what:I

    .line 58
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    iget-object p1, p0, Lcom/mob/commons/a/m;->c:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lcom/mob/commons/FBListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/a/m;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/a/m;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 75
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
