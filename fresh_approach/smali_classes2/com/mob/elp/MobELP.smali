.class public Lcom/mob/elp/MobELP;
.super Ljava/lang/Object;
.source "MobELP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/elp/MobELP$PushMessageListener;
    }
.end annotation


# static fields
.field private static final SDK_TAG:Ljava/lang/String; = "ELPSDK"

.field private static final SDK_VERSION:Ljava/lang/String; = "1.0.3"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object v0

    const-string v1, "ELPSDK : 1.0.3"

    invoke-virtual {v0, v1}, Lcom/mob/elp/d/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMessageListener(Ljava/lang/String;Lcom/mob/elp/MobELP$PushMessageListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/elp/a/b;->b()Lcom/mob/elp/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mob/elp/a/b;->a(Ljava/lang/String;Lcom/mob/elp/MobELP$PushMessageListener;)V

    return-void
.end method

.method public static init(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/mob/elp/a/b;->b()Lcom/mob/elp/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iput-object p0, v0, Lcom/mob/elp/a/b;->e:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/mob/tools/utils/ActivityTracker;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/ActivityTracker;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/mob/tools/utils/ActivityTracker;->addTracker(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V

    .line 4
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.mob.elp.intent.NOTIFICATION_OPENED"

    .line 5
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "registerReceiver"

    const/4 v3, 0x2

    :try_start_1
    new-array v4, v3, [Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/mob/elp/c/a;->a()Lcom/mob/elp/c/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mob/elp/c/a;->b()Landroid/content/BroadcastReceiver;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p0, v4, v5

    new-array p0, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/BroadcastReceiver;

    aput-object v3, p0, v6

    const-class v3, Landroid/content/IntentFilter;

    aput-object v3, p0, v5

    .line 8
    invoke-static {v1, v2, v4, p0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    invoke-static {v0}, Lcom/mob/mcl/MCLSDK;->addELPMessageListener(Lcom/mob/mcl/MCLSDK$ELPMessageListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 14
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/elp/d/d;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const/4 p0, 0x0

    .line 15
    throw p0
.end method
