.class public Lcom/mob/mobapm/core/l/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static c:I


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mob/mobapm/core/l/a;->b:Z

    .line 6
    new-instance v0, Lcom/mob/mobapm/core/l/a$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mob/mobapm/core/l/a$a;-><init>(Lcom/mob/mobapm/core/l/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mob/mobapm/core/l/a;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .line 1
    sput p0, Lcom/mob/mobapm/core/l/a;->c:I

    return p0
.end method

.method static synthetic a(Lcom/mob/mobapm/core/l/a;)Ljava/util/Map;
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/mob/mobapm/core/l/a;->c()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/mob/mobapm/core/l/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mob/mobapm/core/l/a;->b:Z

    return p1
.end method

.method private c()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 6
    invoke-static {v0}, Lcom/mob/mobapm/e/c;->a([Ljava/lang/StackTraceElement;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private d()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/mob/mobapm/core/e;->b()Lcom/mob/mobapm/core/e;

    move-result-object v0

    new-instance v1, Lcom/mob/mobapm/core/l/a$b;

    invoke-direct {v1, p0}, Lcom/mob/mobapm/core/l/a$b;-><init>(Lcom/mob/mobapm/core/l/a;)V

    invoke-virtual {v0, v1}, Lcom/mob/mobapm/core/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/mob/mobapm/core/l/a;->b()V

    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget v0, Lcom/mob/mobapm/core/l/a;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mob/mobapm/core/l/a;->c:I

    .line 3
    iget-object v0, p0, Lcom/mob/mobapm/core/l/a;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-wide/16 v2, 0x1388

    .line 6
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 8
    sget v0, Lcom/mob/mobapm/core/l/a;->c:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mob/mobapm/core/l/a;->b:Z

    if-eqz v0, :cond_0

    .line 9
    iput-boolean v1, p0, Lcom/mob/mobapm/core/l/a;->b:Z

    .line 10
    invoke-direct {p0}, Lcom/mob/mobapm/core/l/a;->d()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APM: processs stack error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    invoke-virtual {p0}, Lcom/mob/mobapm/core/l/a;->a()V

    return-void
.end method
