.class public Lcom/mob/elp/a/b;
.super Ljava/lang/Object;
.source "ELPImpl.java"

# interfaces
.implements Lcom/mob/mcl/MCLSDK$ELPMessageListener;
.implements Lcom/mob/tools/utils/ActivityTracker$Tracker;


# static fields
.field private static volatile f:Lcom/mob/elp/a/b;

.field public static final g:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mob/elp/PushMessage;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mob/elp/MobELP$PushMessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mob/elp/PushMessage;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mob/elp/a/b;->g:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/elp/a/b;->b:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/elp/a/b;->c:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/elp/a/b;->d:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/mob/elp/a/b;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/elp/a/b;->c:Ljava/util/HashMap;

    return-object p0
.end method

.method private a(Lcom/mob/elp/PushMessage;)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/mob/elp/a/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/mob/elp/a/b;->c:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/elp/MobELP$PushMessageListener;

    if-eqz v1, :cond_0

    .line 13
    new-instance v2, Lcom/mob/elp/a/b$a;

    invoke-direct {v2, p0, v1, p1}, Lcom/mob/elp/a/b$a;-><init>(Lcom/mob/elp/a/b;Lcom/mob/elp/MobELP$PushMessageListener;Lcom/mob/elp/PushMessage;)V

    const/4 v1, 0x0

    invoke-static {v1, v2}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method static a(Lcom/mob/elp/a/b;Landroid/content/Context;Lcom/mob/elp/PushMessage;Ljava/lang/String;)V
    .locals 8

    if-eqz p0, :cond_4

    .line 14
    :try_start_0
    new-instance v0, Lcom/mob/elp/d/e;

    invoke-direct {v0}, Lcom/mob/elp/d/e;-><init>()V

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    .line 19
    iget-object v3, p2, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v3, v3, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    const/16 v4, 0x3c

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 20
    iget-object v3, p2, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget-object v3, v3, Lcom/mob/elp/PushMessage$Unfold;->images:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/16 v3, 0x36

    .line 21
    invoke-static {p1, v3}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v6, v2, 0x4

    .line 22
    invoke-static {p1, v4}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result p1

    goto :goto_1

    .line 23
    :cond_0
    iget-object v3, p2, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v3, v3, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_1

    .line 24
    iget-object v3, p2, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget-object v3, v3, Lcom/mob/elp/PushMessage$Unfold;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x5a

    .line 25
    invoke-static {p1, v3}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0x2a

    .line 26
    invoke-static {p1, v4}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result p1

    :goto_0
    sub-int/2addr v2, p1

    goto :goto_2

    .line 27
    :cond_1
    iget-object v3, p2, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v3, v3, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_2

    .line 28
    iget-object v2, p2, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget-object v2, v2, Lcom/mob/elp/PushMessage$Unfold;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-static {p1, v4}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    move v2, v3

    goto :goto_2

    .line 31
    :cond_2
    iget-object v3, p2, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v3, v3, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    if-ne v3, v5, :cond_3

    .line 32
    iget-object v3, p2, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget-object v3, v3, Lcom/mob/elp/PushMessage$Unfold;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x64

    .line 33
    invoke-static {p1, v3}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0xc

    .line 34
    invoke-static {p1, v4}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    :goto_1
    move v3, p1

    move v2, v6

    .line 36
    :goto_2
    new-instance p1, Lcom/mob/elp/a/d;

    invoke-direct {p1, p0, p2, p3}, Lcom/mob/elp/a/d;-><init>(Lcom/mob/elp/a/b;Lcom/mob/elp/PushMessage;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/mob/elp/d/e;->a(Ljava/util/ArrayList;IILcom/mob/elp/d/e$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 60
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/elp/d/d;->a(Ljava/lang/Throwable;)V

    .line 61
    invoke-static {p3}, Lcom/mob/mcl/MCLSDK;->deleteMsg(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_4
    const/4 p0, 0x0

    .line 62
    throw p0
.end method

.method static synthetic a(Lcom/mob/elp/a/b;Lcom/mob/elp/PushMessage;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mob/elp/a/b;->a(Lcom/mob/elp/PushMessage;)V

    return-void
.end method

.method static a(Lcom/mob/elp/a/b;Lcom/mob/elp/PushMessage;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 63
    :try_start_0
    invoke-static {}, Lcom/mob/elp/b/a;->b()Lcom/mob/elp/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/elp/b/a;->a()Lcom/mob/elp/b/b;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/mob/elp/a/b;->a:Landroid/app/Activity;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    invoke-static {}, Lcom/mob/elp/b/a;->b()Lcom/mob/elp/b/a;

    move-result-object v0

    iget-object p0, p0, Lcom/mob/elp/a/b;->a:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, p2}, Lcom/mob/elp/b/a;->a(Landroid/app/Activity;Lcom/mob/elp/PushMessage;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object p0, p0, Lcom/mob/elp/a/b;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 70
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/elp/d/d;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 71
    throw p0
.end method

.method public static b()Lcom/mob/elp/a/b;
    .locals 2

    .line 2
    sget-object v0, Lcom/mob/elp/a/b;->f:Lcom/mob/elp/a/b;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/mob/elp/a/b;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/mob/elp/a/b;->f:Lcom/mob/elp/a/b;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/mob/elp/a/b;

    invoke-direct {v1}, Lcom/mob/elp/a/b;-><init>()V

    sput-object v1, Lcom/mob/elp/a/b;->f:Lcom/mob/elp/a/b;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/elp/a/b;->f:Lcom/mob/elp/a/b;

    return-object v0
.end method

.method static synthetic b(Lcom/mob/elp/a/b;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/elp/a/b;->d:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic c(Lcom/mob/elp/a/b;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/elp/a/b;->b:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 72
    sget-object v0, Lcom/mob/elp/a/b;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mob/elp/a/b$b;

    invoke-direct {v1, p0}, Lcom/mob/elp/a/b$b;-><init>(Lcom/mob/elp/a/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mob/elp/MobELP$PushMessageListener;)V
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/mob/elp/a/b;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mob/elp/a/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mob/elp/PushMessage;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/mob/elp/a/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public messageReceived(Landroid/os/Bundle;)Z
    .locals 3

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "msgType"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "workId"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3
    sget-object v0, Lcom/mob/elp/a/b;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/mob/elp/a/c;

    invoke-direct {v2, p0, p1, v1}, Lcom/mob/elp/a/c;-><init>(Lcom/mob/elp/a/b;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 4
    sget-object v0, Lcom/mob/elp/a/b;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/mob/elp/a/a;

    invoke-direct {v2, p0, p1, v1}, Lcom/mob/elp/a/a;-><init>(Lcom/mob/elp/a/b;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/elp/d/d;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/elp/a/b;->a:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/mob/elp/a/b;->a:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onResumed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/mob/elp/a/b;->a:Landroid/app/Activity;

    .line 2
    sget-object p1, Lcom/mob/elp/a/b;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/mob/elp/a/b$b;

    invoke-direct {v0, p0}, Lcom/mob/elp/a/b$b;-><init>(Lcom/mob/elp/a/b;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/mob/elp/a/b;->d:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mob/elp/a/b;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/mob/elp/a/b;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/mob/elp/a/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/elp/PushMessage;

    .line 9
    iget-object v1, p0, Lcom/mob/elp/a/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-direct {p0, v0}, Lcom/mob/elp/a/b;->a(Lcom/mob/elp/PushMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 14
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/elp/d/d;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
