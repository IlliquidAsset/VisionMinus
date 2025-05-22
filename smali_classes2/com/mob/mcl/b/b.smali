.class public Lcom/mob/mcl/b/b;
.super Ljava/lang/Object;
.source "MCLink.java"

# interfaces
.implements Lcom/mob/apc/MobAPC$MobAPCMessageListener;


# static fields
.field public static final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/mob/tools/network/NetworkHelper;

.field private d:Lcom/mob/tools/utils/Hashon;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/mob/mcl/b/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/mob/mcl/b/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/b/b;->c:Lcom/mob/tools/network/NetworkHelper;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/b/b;->b:Ljava/util/HashSet;

    .line 4
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/b/b;->d:Lcom/mob/tools/utils/Hashon;

    .line 5
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mcl/b/b;->a:Landroid/content/Context;

    return-void
.end method

.method public static a()J
    .locals 2

    .line 241
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/i;->a()V

    .line 242
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    iget-wide v0, v0, Lcom/mob/mcl/c/i;->k:J

    return-wide v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/StringPart;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/StringPart;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 227
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "url"

    .line 228
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_0

    .line 231
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mob/tools/network/KVPair;

    .line 232
    iget-object v1, p3, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object p3, p3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    invoke-virtual {p1, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p2, "headers"

    .line 235
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    .line 237
    invoke-virtual {p4}, Lcom/mob/tools/network/StringPart;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "body"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_1
    iget-object p1, p0, Lcom/mob/mcl/b/b;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(II)V
    .locals 3

    .line 11
    sget-object v0, Lcom/mob/mcl/b/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    new-instance v1, Lcom/mob/mcl/b/a;

    invoke-direct {v1, p0, p1}, Lcom/mob/mcl/b/a;-><init>(Lcom/mob/mcl/b/b;I)V

    int-to-long p1, p2

    .line 13
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static a(ILcom/mob/mcl/BusinessMessageListener;)V
    .locals 1

    .line 260
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mob/mcl/c/i;->a(ILcom/mob/mcl/BusinessMessageListener;)V

    return-void
.end method

.method public static a(Lcom/mob/mcl/MCLSDK$ELPMessageListener;)V
    .locals 1

    .line 259
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/mcl/c/i;->a(Lcom/mob/mcl/MCLSDK$ELPMessageListener;)V

    return-void
.end method

.method static a(Lcom/mob/mcl/b/b;I)V
    .locals 2

    if-eqz p0, :cond_6

    const/4 v0, 0x6

    if-ge p1, v0, :cond_5

    .line 14
    invoke-static {}, Lcom/mob/mcl/b/b;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mob/mcl/a/b;->a()Lcom/mob/mcl/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    const/16 v0, 0x1388

    .line 15
    invoke-static {v0}, Lcom/mob/mcl/b/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/i;->h()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p1, :cond_1

    add-int/2addr p1, v1

    const/16 v0, 0xa

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/mob/mcl/b/b;->a(II)V

    goto :goto_1

    :cond_1
    if-ne p1, v1, :cond_2

    add-int/2addr p1, v1

    const/16 v0, 0x1e

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/mob/mcl/b/b;->a(II)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    add-int/2addr p1, v1

    const/16 v0, 0x3c

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/mob/mcl/b/b;->a(II)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    add-int/2addr p1, v1

    const/16 v0, 0xb4

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/mob/mcl/b/b;->a(II)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    add-int/2addr p1, v1

    const/16 v0, 0x12c

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/mob/mcl/b/b;->a(II)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    const/4 p0, 0x0

    .line 26
    throw p0
.end method

.method private static a(I)Z
    .locals 3

    const/4 v0, 0x0

    .line 27
    :try_start_0
    sget-object v1, Lcom/mob/mcl/b/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 64
    sget-object p0, Lcom/mob/mcl/b/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v0

    .line 65
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mob/mcl/b/b;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 67
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mcl/c/i;->j()V

    .line 68
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mob/mcl/c/i;->f:Z

    if-nez v1, :cond_1

    .line 69
    sget-object p0, Lcom/mob/mcl/b/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    sget-object p0, Lcom/mob/mcl/b/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v0

    .line 98
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mcl/c/i;->i()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mob/mcl/c/i;->a(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 101
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p0

    const-string v1, "tcp register success"

    invoke-virtual {p0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/mob/mcl/c/d;->a()Lcom/mob/mcl/c/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/c/d;->c()Lcom/mob/mcl/c/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/c/d;->d()V

    .line 103
    invoke-static {}, Lcom/mob/mcl/c/d;->a()Lcom/mob/mcl/c/d;

    .line 104
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object p0

    iget-boolean p0, p0, Lcom/mob/mcl/c/i;->h:Z

    if-nez p0, :cond_2

    .line 105
    invoke-static {}, Lcom/mob/mcl/a/b;->a()Lcom/mob/mcl/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/a/b;->b()Z

    move-result p0

    if-nez p0, :cond_2

    .line 106
    invoke-static {}, Lcom/mob/mcl/a/b;->a()Lcom/mob/mcl/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/a/b;->c()V

    .line 107
    :cond_2
    sget-object p0, Lcom/mob/mcl/b/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    sget-object p0, Lcom/mob/mcl/b/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v2

    .line 123
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object p0

    iget-boolean p0, p0, Lcom/mob/mcl/c/i;->l:Z

    .line 126
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p0

    const-string v1, "tcp register failed"

    invoke-virtual {p0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_4
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p0

    const-string v1, "tcp register isTcpAvailable false"

    invoke-virtual {p0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 129
    :cond_5
    :goto_0
    invoke-static {}, Lcom/mob/mcl/a/b;->a()Lcom/mob/mcl/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/a/b;->b()Z

    move-result p0

    if-nez p0, :cond_6

    .line 130
    invoke-static {}, Lcom/mob/mcl/a/b;->a()Lcom/mob/mcl/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/a/b;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 131
    :try_start_4
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 133
    :cond_6
    :goto_1
    sget-object p0, Lcom/mob/mcl/b/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v0

    :catchall_1
    move-exception p0

    sget-object v1, Lcom/mob/mcl/b/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p0
.end method

.method public static a(Ljava/lang/String;J)Z
    .locals 1

    .line 243
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    monitor-enter v0

    .line 244
    :try_start_0
    iput-object p0, v0, Lcom/mob/mcl/c/i;->j:Ljava/lang/String;

    .line 245
    iput-wide p1, v0, Lcom/mob/mcl/c/i;->k:J

    .line 246
    invoke-static {p0}, Lcom/mob/mcl/d/d;->b(Ljava/lang/String;)V

    .line 247
    iget-wide p0, v0, Lcom/mob/mcl/c/i;->k:J

    invoke-static {p0, p1}, Lcom/mob/mcl/d/d;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    .line 248
    :try_start_1
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/c/i;->i()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 249
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/c/i;->f()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0xbb8

    .line 250
    invoke-static {p0}, Lcom/mob/mcl/b/b;->a(I)Z

    .line 253
    :cond_0
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/c/i;->f()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 254
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/c/i;->k()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 258
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/i;->a()V

    .line 3
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    iget-object v0, v0, Lcom/mob/mcl/c/i;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "getRunningAppProcesses"

    :try_start_1
    new-array v4, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {v2, v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    return v0

    .line 6
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 10
    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 13
    :try_start_3
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    .line 17
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 19
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Lcom/mob/tools/network/KVPair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "http"

    if-nez p1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/mob/mcl/b/b;->b:Ljava/util/HashSet;

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 136
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    iget-object p1, p0, Lcom/mob/mcl/b/b;->c:Lcom/mob/tools/network/NetworkHelper;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/mob/tools/network/NetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1

    .line 138
    new-instance p2, Lcom/mob/tools/network/KVPair;

    invoke-direct {p2, v0, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p2

    :cond_1
    const/4 v1, 0x0

    if-eqz p3, :cond_6

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 144
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mob/tools/network/KVPair;

    .line 145
    iget-object v4, v3, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 146
    iget-object v3, v3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    if-eqz v3, :cond_2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, ""

    .line 147
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    const/16 v5, 0x26

    .line 148
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 158
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 159
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_5
    move-object p3, v1

    .line 164
    :cond_6
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/mcl/c/i;->g()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 165
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/mcl/c/i;->f()Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v2, 0xbb8

    .line 166
    invoke-static {v2}, Lcom/mob/mcl/b/b;->a(I)Z

    .line 169
    :cond_7
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/mcl/c/i;->f()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 170
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v2

    iget v3, p5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const-string v4, "GET"

    invoke-direct {p0, v4, p2, p4, v1}, Lcom/mob/mcl/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/StringPart;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3ec

    invoke-virtual {v2, v5, v3, v4}, Lcom/mob/mcl/c/i;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 172
    new-instance p1, Lcom/mob/tools/network/KVPair;

    iget-object p2, p0, Lcom/mob/mcl/b/b;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p2, v2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "tcp"

    invoke-direct {p1, p3, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    :cond_8
    if-nez p1, :cond_9

    .line 174
    iget-object p1, p0, Lcom/mob/mcl/b/b;->c:Lcom/mob/tools/network/NetworkHelper;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/mob/tools/network/NetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1

    .line 175
    new-instance p2, Lcom/mob/tools/network/KVPair;

    invoke-direct {p2, v0, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p2

    :cond_9
    if-eqz p1, :cond_a

    return-object v1

    .line 182
    :cond_a
    invoke-static {}, Lcom/mob/mcl/a/b;->a()Lcom/mob/mcl/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/mcl/a/b;->b()Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x5

    const/4 p3, 0x0

    .line 183
    invoke-direct {p0, p1, p3}, Lcom/mob/mcl/b/b;->a(II)V

    .line 184
    :cond_b
    invoke-static {}, Lcom/mob/mcl/a/b;->a()Lcom/mob/mcl/a/b;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "GET"

    move-object v4, p2

    move-object v5, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/mob/mcl/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c

    .line 186
    new-instance p2, Lcom/mob/tools/network/KVPair;

    const-string p3, "apc-tcp"

    invoke-direct {p2, p3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 188
    :cond_c
    iget-object p1, p0, Lcom/mob/mcl/b/b;->c:Lcom/mob/tools/network/NetworkHelper;

    invoke-virtual {p1, p2, p4, v1, p5}, Lcom/mob/tools/network/NetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1

    .line 189
    new-instance p2, Lcom/mob/tools/network/KVPair;

    invoke-direct {p2, v0, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-object p2
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "mcl init"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/mcl/b/b;->a:Landroid/content/Context;

    .line 6
    :cond_0
    invoke-static {}, Lcom/mob/mcl/a/b;->a()Lcom/mob/mcl/a/b;

    move-result-object p1

    iget-object v0, p0, Lcom/mob/mcl/b/b;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, p0}, Lcom/mob/mcl/a/b;->a(Landroid/content/Context;Lcom/mob/apc/MobAPC$MobAPCMessageListener;)V

    .line 7
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object p1

    iget-object v0, p0, Lcom/mob/mcl/b/b;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, p2, p3}, Lcom/mob/mcl/c/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 9
    invoke-static {p1}, Lcom/mob/mcl/d/d;->a(Z)V

    .line 10
    invoke-direct {p0, p1, p1}, Lcom/mob/mcl/b/b;->a(II)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mcl/b/b;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(ZLjava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/StringPart;",
            "I",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object v0, p0

    move-object v8, p2

    move-object/from16 v9, p6

    if-nez p1, :cond_1

    .line 190
    iget-object v1, v0, Lcom/mob/mcl/b/b;->b:Ljava/util/HashSet;

    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    iget-object v1, v0, Lcom/mob/mcl/b/b;->c:Lcom/mob/tools/network/NetworkHelper;

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/mob/tools/network/NetworkHelper;->rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void

    .line 198
    :cond_1
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mcl/c/i;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 199
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mcl/c/i;->f()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0xbb8

    .line 200
    invoke-static {v1}, Lcom/mob/mcl/b/b;->a(I)Z

    .line 203
    :cond_2
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mcl/c/i;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 204
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v1

    move-object/from16 v10, p7

    iget v2, v10, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const-string v3, "POST"

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct {p0, v3, p2, v11, v12}, Lcom/mob/mcl/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/StringPart;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3ec

    invoke-virtual {v1, v4, v2, v3}, Lcom/mob/mcl/c/i;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 206
    new-instance v2, Lcom/mob/mcl/b/c;

    invoke-direct {v2, v1}, Lcom/mob/mcl/b/c;-><init>(Ljava/util/HashMap;)V

    invoke-interface {v9, v2}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V

    return-void

    :cond_3
    if-nez p1, :cond_5

    .line 210
    iget-object v1, v0, Lcom/mob/mcl/b/b;->c:Lcom/mob/tools/network/NetworkHelper;

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/mob/tools/network/NetworkHelper;->rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void

    :cond_4
    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v10, p7

    :cond_5
    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 216
    invoke-interface {v9, v1}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V

    goto :goto_0

    .line 218
    :cond_6
    invoke-static {}, Lcom/mob/mcl/a/b;->a()Lcom/mob/mcl/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mcl/a/b;->b()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 219
    invoke-direct {p0, v1, v2}, Lcom/mob/mcl/b/b;->a(II)V

    .line 220
    :cond_7
    invoke-static {}, Lcom/mob/mcl/a/b;->a()Lcom/mob/mcl/a/b;

    move-result-object v1

    const-string v2, "POST"

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/mob/mcl/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 222
    new-instance v2, Lcom/mob/mcl/b/c;

    iget-object v3, v0, Lcom/mob/mcl/b/b;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v3, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/mob/mcl/b/c;-><init>(Ljava/util/HashMap;Z)V

    invoke-interface {v9, v2}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V

    goto :goto_0

    .line 225
    :cond_8
    iget-object v1, v0, Lcom/mob/mcl/b/b;->c:Lcom/mob/tools/network/NetworkHelper;

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/mob/tools/network/NetworkHelper;->rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mcl/b/b;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onMessageReceive(Ljava/lang/String;Lcom/mob/apc/APCMessage;J)Lcom/mob/apc/APCMessage;
    .locals 21

    move-object/from16 v0, p2

    const-string v1, "uniqueId"

    const-string v2, "expire"

    const-string v3, "workId"

    const-string v4, "needRepeat"

    .line 1
    invoke-static {}, Lcom/mob/mcl/a/b;->a()Lcom/mob/mcl/a/b;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_b

    .line 2
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apc received mg "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " from -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    const-string v5, "type"

    const/16 v7, 0x232c

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_3

    .line 4
    new-instance v10, Lcom/mob/apc/APCMessage;

    invoke-direct {v10}, Lcom/mob/apc/APCMessage;-><init>()V

    .line 5
    iget v11, v0, Lcom/mob/apc/APCMessage;->what:I

    iput v11, v10, Lcom/mob/apc/APCMessage;->what:I

    .line 6
    iget v11, v0, Lcom/mob/apc/APCMessage;->what:I

    if-ne v11, v9, :cond_0

    .line 7
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 8
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mob/mcl/c/i;->g()Z

    move-result v12

    const-string v13, "isTcpAvailable"

    invoke-virtual {v11, v13, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    iput-object v11, v10, Lcom/mob/apc/APCMessage;->data:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    if-ne v11, v8, :cond_2

    .line 13
    iget-object v11, v0, Lcom/mob/apc/APCMessage;->data:Landroid/os/Bundle;

    .line 14
    new-instance v12, Lcom/mob/mcl/a/c;

    invoke-direct {v12}, Lcom/mob/mcl/a/c;-><init>()V

    if-eqz v11, :cond_1

    .line 16
    invoke-virtual {v11, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/mob/mcl/a/c;->a:Ljava/lang/String;

    const-string v13, "url"

    .line 17
    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/mob/mcl/a/c;->b:Ljava/lang/String;

    const-string v13, "headers"

    .line 19
    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/mob/mcl/a/c;->c:Ljava/lang/String;

    const-string v13, "chunkLength"

    .line 21
    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/mob/mcl/a/c;->e:I

    const-string v13, "body"

    .line 23
    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/mob/mcl/a/c;->d:Ljava/lang/String;

    const-string v13, "readTimout"

    .line 25
    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/mob/mcl/a/c;->f:I

    const-string v13, "connectionTimeout"

    .line 26
    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v12, Lcom/mob/mcl/a/c;->g:I

    .line 27
    :cond_1
    iput-object v12, v10, Lcom/mob/apc/APCMessage;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-ne v11, v7, :cond_3

    goto :goto_0

    :cond_3
    move-object v10, v6

    :goto_0
    if-eqz v10, :cond_a

    .line 28
    :try_start_0
    iget-object v11, v10, Lcom/mob/apc/APCMessage;->obj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v12, "data"

    if-eqz v11, :cond_6

    :try_start_1
    iget-object v11, v10, Lcom/mob/apc/APCMessage;->obj:Ljava/lang/Object;

    instance-of v11, v11, Lcom/mob/mcl/a/c;

    if-eqz v11, :cond_6

    .line 29
    iget-object v0, v10, Lcom/mob/apc/APCMessage;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mob/mcl/a/c;

    .line 30
    new-instance v1, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v1}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 31
    iget v2, v0, Lcom/mob/mcl/a/c;->f:I

    iput v2, v1, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 32
    iget v2, v0, Lcom/mob/mcl/a/c;->g:I

    iput v2, v1, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const-string v2, "POST"

    .line 33
    :try_start_2
    iget-object v3, v0, Lcom/mob/mcl/a/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 34
    iput-object v6, v10, Lcom/mob/apc/APCMessage;->obj:Ljava/lang/Object;

    const/4 v14, 0x1

    .line 35
    iget-object v15, v0, Lcom/mob/mcl/a/c;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/mob/mcl/a/c;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/mob/mcl/a/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    new-instance v2, Lcom/mob/tools/network/StringPart;

    invoke-direct {v2}, Lcom/mob/tools/network/StringPart;-><init>()V

    iget-object v3, v0, Lcom/mob/mcl/a/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v17

    iget v0, v0, Lcom/mob/mcl/a/c;->e:I

    .line 36
    invoke-static {}, Lcom/mob/mcl/a/b;->a()Lcom/mob/mcl/a/b;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/mob/mcl/a/b;->a(Lcom/mob/apc/APCMessage;)Lcom/mob/tools/network/HttpResponseCallback;

    move-result-object v19

    move-object/from16 v13, p0

    move/from16 v18, v0

    move-object/from16 v20, v1

    .line 37
    invoke-virtual/range {v13 .. v20}, Lcom/mob/mcl/b/b;->a(ZLjava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto/16 :goto_5

    :cond_4
    const-string v2, "GET"

    .line 40
    :try_start_3
    iget-object v3, v0, Lcom/mob/mcl/a/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v14, 0x1

    .line 41
    iget-object v15, v0, Lcom/mob/mcl/a/c;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/mob/mcl/a/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/mcl/a/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v13, p0

    move-object/from16 v18, v1

    invoke-virtual/range {v13 .. v18}, Lcom/mob/mcl/b/b;->a(ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Lcom/mob/tools/network/KVPair;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/mob/mcl/a/b;->a()Lcom/mob/mcl/a/b;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_a

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 44
    iget-object v0, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iput-object v1, v10, Lcom/mob/apc/APCMessage;->data:Landroid/os/Bundle;

    goto/16 :goto_5

    .line 46
    :cond_5
    throw v6

    .line 47
    :cond_6
    iget v6, v10, Lcom/mob/apc/APCMessage;->what:I

    if-ne v6, v7, :cond_a

    .line 48
    iget-object v6, v0, Lcom/mob/apc/APCMessage;->data:Landroid/os/Bundle;

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 49
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v7, :cond_a

    .line 51
    :try_start_4
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v7

    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mob/mcl/c/i;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v6}, Lcom/mob/mcl/c/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v7, p0

    .line 52
    :try_start_5
    iget-object v11, v7, Lcom/mob/mcl/b/b;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v11, v6}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 53
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/4 v13, 0x0

    .line 54
    invoke-static {v6, v2, v13}, Lcom/mob/mcl/c/i;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v14

    .line 55
    invoke-static {v6, v4, v13}, Lcom/mob/mcl/c/i;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v15

    if-ne v15, v9, :cond_7

    const/4 v15, 0x1

    goto :goto_1

    :cond_7
    const/4 v15, 0x0

    .line 56
    :goto_1
    invoke-static {v6, v5, v13}, Lcom/mob/mcl/c/i;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v5

    .line 57
    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v13, "repeat"

    if-eq v5, v9, :cond_9

    if-ne v5, v8, :cond_8

    goto :goto_2

    .line 72
    :cond_8
    :try_start_6
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    invoke-virtual {v0, v11, v14, v5, v6}, Lcom/mob/mcl/c/i;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    .line 73
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 74
    invoke-virtual {v1, v4, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    invoke-virtual {v1, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    iput-object v1, v10, Lcom/mob/apc/APCMessage;->data:Landroid/os/Bundle;

    goto :goto_6

    .line 77
    :cond_9
    :goto_2
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 78
    invoke-virtual {v8, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v8, v3, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, v0, Lcom/mob/apc/APCMessage;->data:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v8, v1, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 81
    invoke-virtual {v8, v2, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "msgType"

    .line 82
    invoke-virtual {v8, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/mob/mcl/c/i;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 85
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 86
    invoke-virtual {v1, v4, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    invoke-virtual {v1, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    iput-object v1, v10, Lcom/mob/apc/APCMessage;->data:Landroid/os/Bundle;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v7, p0

    .line 97
    :goto_3
    :try_start_7
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v7, p0

    .line 102
    :goto_4
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_a
    :goto_5
    move-object/from16 v7, p0

    :goto_6
    return-object v10

    :cond_b
    move-object/from16 v7, p0

    .line 103
    throw v6
.end method
