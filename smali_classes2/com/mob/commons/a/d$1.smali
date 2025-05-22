.class Lcom/mob/commons/a/d$1;
.super Lcom/mob/tools/MobHandlerThread;
.source "BaseClt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/d;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/mob/commons/a/d;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/d;Ljava/io/File;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/mob/commons/a/d$1;->b:Lcom/mob/commons/a/d;

    iput-object p2, p0, Lcom/mob/commons/a/d$1;->a:Ljava/io/File;

    invoke-direct {p0}, Lcom/mob/tools/MobHandlerThread;-><init>()V

    return-void
.end method

.method private a()V
    .locals 0

    .line 123
    invoke-super {p0}, Lcom/mob/tools/MobHandlerThread;->run()V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/a/d$1;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/mob/commons/a/d$1;->a()V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared(Landroid/os/Looper;)V
    .locals 3

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/a/d$1;->b:Lcom/mob/commons/a/d;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/mob/commons/a/d$1;->b:Lcom/mob/commons/a/d;

    invoke-direct {v1, p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-static {v0, v1}, Lcom/mob/commons/a/d;->a(Lcom/mob/commons/a/d;Landroid/os/Handler;)Landroid/os/Handler;

    .line 129
    iget-object p1, p0, Lcom/mob/commons/a/d$1;->b:Lcom/mob/commons/a/d;

    invoke-virtual {p1}, Lcom/mob/commons/a/d;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 131
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/a/d$1;->a:Ljava/io/File;

    new-instance v1, Lcom/mob/commons/a/d$1$1;

    invoke-direct {v1, p0}, Lcom/mob/commons/a/d$1$1;-><init>(Lcom/mob/commons/a/d$1;)V

    invoke-static {v0, v1}, Lcom/mob/commons/e;->a(Ljava/io/File;Lcom/mob/commons/LockAction;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronizeProcess failed clt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mob/commons/a/d$1;->b:Lcom/mob/commons/a/d;

    .line 114
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mob/commons/a/d$1;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    .line 115
    invoke-static {}, Lcom/mob/commons/a/d;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 118
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
