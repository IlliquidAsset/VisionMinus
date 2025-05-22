.class Lcom/mob/mobapm/core/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mobapm/core/h;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mobapm/core/h;


# direct methods
.method constructor <init>(Lcom/mob/mobapm/core/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/core/h$a;->a:Lcom/mob/mobapm/core/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/core/h$a;->a:Lcom/mob/mobapm/core/h;

    iget-object v0, v0, Lcom/mob/mobapm/core/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Id"

    const-string v2, "sockets"

    .line 2
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/mobapm/b/c;->a(Landroid/content/Context;)Lcom/mob/mobapm/b/c;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/mob/mobapm/b/c;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "records"

    .line 10
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    invoke-static {v3}, Lcom/mob/mobapm/core/d;->d(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APM: upload transaction success. object:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 14
    instance-of v3, v1, Ljava/util/HashMap;

    if-eqz v3, :cond_2

    .line 15
    check-cast v1, Ljava/util/HashMap;

    const-string v3, "code"

    .line 16
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_1

    const v3, 0x3f08ba

    if-ne v1, v3, :cond_2

    .line 19
    :cond_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/mobapm/b/c;->a(Landroid/content/Context;)Lcom/mob/mobapm/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mobapm/b/c;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 23
    :try_start_2
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APM: upload socketTransaction has error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 25
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/mob/mobapm/core/h$a;->a:Lcom/mob/mobapm/core/h;

    iget-object v1, v1, Lcom/mob/mobapm/core/k;->a:Landroid/os/Handler;

    sget v3, Lcom/mob/mobapm/core/c;->c:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 26
    monitor-exit v0

    return-void

    .line 27
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/mob/mobapm/core/h$a;->a:Lcom/mob/mobapm/core/h;

    iget-object v1, v1, Lcom/mob/mobapm/core/k;->a:Landroid/os/Handler;

    sget v3, Lcom/mob/mobapm/core/c;->c:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 28
    monitor-exit v0

    return-void

    .line 48
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_2
.end method
