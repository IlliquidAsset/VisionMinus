.class Lcom/mob/commons/a/d$1$1;
.super Ljava/lang/Object;
.source "BaseClt.java"

# interfaces
.implements Lcom/mob/commons/LockAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/a/d$1;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/d$1;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/mob/commons/a/d$1$1;->a:Lcom/mob/commons/a/d$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 5

    const/4 p1, 0x0

    .line 88
    :try_start_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronizeProcess success clt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mob/commons/a/d$1$1;->a:Lcom/mob/commons/a/d$1;

    iget-object v2, v2, Lcom/mob/commons/a/d$1;->b:Lcom/mob/commons/a/d;

    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mob/commons/a/d$1$1;->a:Lcom/mob/commons/a/d$1;

    iget-object v2, v2, Lcom/mob/commons/a/d$1;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mob/commons/a/d$1$1;->a:Lcom/mob/commons/a/d$1;

    iget-object v2, v2, Lcom/mob/commons/a/d$1;->b:Lcom/mob/commons/a/d;

    .line 91
    invoke-static {v2}, Lcom/mob/commons/a/d;->a(Lcom/mob/commons/a/d;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, p1, [Ljava/lang/Object;

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 93
    iget-object v0, p0, Lcom/mob/commons/a/d$1$1;->a:Lcom/mob/commons/a/d$1;

    iget-object v0, v0, Lcom/mob/commons/a/d$1;->b:Lcom/mob/commons/a/d;

    invoke-static {v0}, Lcom/mob/commons/a/d;->a(Lcom/mob/commons/a/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lcom/mob/commons/b;->ac()Z

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/mob/commons/a/d$1$1;->a:Lcom/mob/commons/a/d$1;

    iget-object v1, v1, Lcom/mob/commons/a/d$1;->b:Lcom/mob/commons/a/d;

    invoke-virtual {v1}, Lcom/mob/commons/a/d;->b_()Z

    move-result v1

    .line 96
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clt entrance. forb: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", coll: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, p1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/mob/commons/a/d$1$1;->a:Lcom/mob/commons/a/d$1;

    invoke-static {v0}, Lcom/mob/commons/a/d$1;->a(Lcom/mob/commons/a/d$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 106
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return p1
.end method
