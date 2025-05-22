.class public Lcom/mob/mcl/c/d;
.super Ljava/lang/Object;
.source "HeartBeatHelper.java"


# static fields
.field private static volatile e:Lcom/mob/mcl/c/d;


# instance fields
.field private a:Landroid/app/PendingIntent;

.field private b:Landroid/content/BroadcastReceiver;

.field private c:Landroid/content/Context;

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/mob/mcl/c/d;->d:I

    .line 16
    invoke-direct {p0}, Lcom/mob/mcl/c/d;->b()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mcl/c/d;->b:Landroid/content/BroadcastReceiver;

    .line 17
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mcl/c/d;->c:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/mob/mcl/c/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/mcl/c/d;->e:Lcom/mob/mcl/c/d;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mob/mcl/c/d;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mob/mcl/c/d;->e:Lcom/mob/mcl/c/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mob/mcl/c/d;

    invoke-direct {v1}, Lcom/mob/mcl/c/d;-><init>()V

    sput-object v1, Lcom/mob/mcl/c/d;->e:Lcom/mob/mcl/c/d;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/mcl/c/d;->e:Lcom/mob/mcl/c/d;

    return-object v0
.end method

.method static a(Lcom/mob/mcl/c/d;I)V
    .locals 3

    .line 9
    iget v0, p0, Lcom/mob/mcl/c/d;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11
    iput p1, p0, Lcom/mob/mcl/c/d;->d:I

    goto :goto_0

    .line 14
    :cond_0
    iput p1, p0, Lcom/mob/mcl/c/d;->d:I

    if-eqz p1, :cond_2

    .line 16
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/mcl/c/i;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    sget-object p1, Lcom/mob/mcl/b/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/mob/mcl/c/b;

    invoke-direct {v0, p0}, Lcom/mob/mcl/c/b;-><init>(Lcom/mob/mcl/c/d;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc8

    invoke-interface {p1, v0, v1, v2, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    :goto_0
    return-void
.end method

.method private b()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 1
    new-instance v0, Lcom/mob/mcl/c/d$a;

    invoke-direct {v0, p0}, Lcom/mob/mcl/c/d$a;-><init>(Lcom/mob/mcl/c/d;)V

    return-object v0
.end method


# virtual methods
.method public c()Lcom/mob/mcl/c/d;
    .locals 8

    const-string v0, "registerReceiver"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/mob/mcl/c/d;->c:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 2
    new-instance v4, Lcom/mob/mcl/c/c;

    invoke-direct {v4, p0}, Lcom/mob/mcl/c/c;-><init>(Lcom/mob/mcl/c/d;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 3
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v4, v2, [Ljava/lang/Class;

    const-class v7, Landroid/content/BroadcastReceiver;

    aput-object v7, v4, v5

    const-class v7, Landroid/content/IntentFilter;

    aput-object v7, v4, v6

    .line 4
    invoke-static {v1, v0, v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/mob/mcl/c/d;->c:Landroid/content/Context;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mob/mcl/c/d;->b:Landroid/content/BroadcastReceiver;

    aput-object v4, v3, v5

    new-instance v4, Landroid/content/IntentFilter;

    const-string v7, "com.mob.mcl.intent.PING"

    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/BroadcastReceiver;

    aput-object v4, v2, v5

    const-class v4, Landroid/content/IntentFilter;

    aput-object v4, v2, v6

    invoke-static {v1, v0, v3, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mob/mcl/c/d;->c:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2
    iget-object v1, p0, Lcom/mob/mcl/c/d;->a:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 6
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mob.mcl.intent.PING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/mob/mcl/c/d;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v2, p0, Lcom/mob/mcl/c/d;->c:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/mcl/c/d;->a:Landroid/app/PendingIntent;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v3

    iget v3, v3, Lcom/mob/mcl/c/i;->e:I

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    .line 12
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/4 v5, 0x2

    if-lt v3, v4, :cond_1

    .line 13
    iget-object v3, p0, Lcom/mob/mcl/c/d;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    const/16 v4, 0x13

    if-lt v3, v4, :cond_2

    .line 15
    iget-object v3, p0, Lcom/mob/mcl/c/d;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v3, p0, Lcom/mob/mcl/c/d;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method
