.class Lcom/mob/mobapm/core/m/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mobapm/core/m/a;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lcom/mob/mobapm/core/m/a;


# direct methods
.method constructor <init>(Lcom/mob/mobapm/core/m/a;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/core/m/a$a;->c:Lcom/mob/mobapm/core/m/a;

    iput-object p2, p0, Lcom/mob/mobapm/core/m/a$a;->a:Ljava/lang/Thread;

    iput-object p3, p0, Lcom/mob/mobapm/core/m/a$a;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "type"

    .line 4
    :try_start_1
    sget-object v6, Lcom/mob/mobapm/bean/ExceptionType;->CRASH:Lcom/mob/mobapm/bean/ExceptionType;

    iget-object v6, v6, Lcom/mob/mobapm/bean/ExceptionType;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "happenTime"

    .line 5
    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "threadName"

    .line 6
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mob/mobapm/core/m/a$a;->a:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mob/mobapm/core/m/a$a;->a:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v5, "errType"

    .line 7
    :try_start_4
    iget-object v6, p0, Lcom/mob/mobapm/core/m/a$a;->b:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v5, "errDesc"

    .line 8
    :try_start_5
    iget-object v6, p0, Lcom/mob/mobapm/core/m/a$a;->b:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v5, "stackDetail"

    .line 9
    :try_start_6
    iget-object v6, p0, Lcom/mob/mobapm/core/m/a$a;->b:Ljava/lang/Throwable;

    invoke-static {v6}, Lcom/mob/mobapm/e/c;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v3}, Lcom/mob/mobapm/b/a;->h(Ljava/util/HashMap;)V

    .line 12
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v3, "bundleName"

    .line 15
    :try_start_7
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v3, "uploadTime"

    .line 16
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "errorStack"

    .line 17
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APM: upload crash Object: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 19
    sget-boolean v2, Lcom/mob/mobapm/core/c;->f:Z

    invoke-static {v1, v2}, Lcom/mob/mobapm/core/d;->a(Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v1

    .line 20
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APM: upload crash result. object:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 21
    instance-of v2, v1, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 22
    check-cast v1, Ljava/util/HashMap;

    const-string v2, "code"

    .line 23
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 25
    invoke-static {v4}, Lcom/mob/mobapm/b/a;->b(Ljava/util/HashMap;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 31
    :cond_0
    invoke-static {}, Lcom/mob/mobapm/core/e;->b()Lcom/mob/mobapm/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mobapm/core/e;->a()V

    .line 32
    invoke-static {}, Lcom/mob/mobapm/core/b;->e()Lcom/mob/mobapm/core/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mobapm/core/b;->d()V

    .line 33
    invoke-static {}, Lcom/mob/mobapm/core/a;->d()Lcom/mob/mobapm/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mobapm/core/k;->b()V

    .line 34
    invoke-static {}, Lcom/mob/mobapm/core/j;->d()Lcom/mob/mobapm/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mobapm/core/k;->b()V

    .line 35
    invoke-static {}, Lcom/mob/mobapm/core/i;->d()Lcom/mob/mobapm/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mobapm/core/k;->b()V

    .line 37
    iget-object v0, p0, Lcom/mob/mobapm/core/m/a$a;->c:Lcom/mob/mobapm/core/m/a;

    invoke-static {v0}, Lcom/mob/mobapm/core/m/a;->a(Lcom/mob/mobapm/core/m/a;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 38
    :try_start_9
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APM: upload crash error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 40
    invoke-static {}, Lcom/mob/mobapm/core/e;->b()Lcom/mob/mobapm/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mobapm/core/e;->a()V

    .line 41
    invoke-static {}, Lcom/mob/mobapm/core/b;->e()Lcom/mob/mobapm/core/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mobapm/core/b;->d()V

    .line 42
    invoke-static {}, Lcom/mob/mobapm/core/a;->d()Lcom/mob/mobapm/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mobapm/core/k;->b()V

    .line 43
    invoke-static {}, Lcom/mob/mobapm/core/j;->d()Lcom/mob/mobapm/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mobapm/core/k;->b()V

    .line 44
    invoke-static {}, Lcom/mob/mobapm/core/i;->d()Lcom/mob/mobapm/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mobapm/core/k;->b()V

    .line 46
    iget-object v0, p0, Lcom/mob/mobapm/core/m/a$a;->c:Lcom/mob/mobapm/core/m/a;

    invoke-static {v0}, Lcom/mob/mobapm/core/m/a;->a(Lcom/mob/mobapm/core/m/a;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    :goto_0
    iget-object v0, p0, Lcom/mob/mobapm/core/m/a$a;->c:Lcom/mob/mobapm/core/m/a;

    invoke-static {v0}, Lcom/mob/mobapm/core/m/a;->a(Lcom/mob/mobapm/core/m/a;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/mobapm/core/m/a$a;->a:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/mob/mobapm/core/m/a$a;->b:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    .line 48
    invoke-static {}, Lcom/mob/mobapm/core/e;->b()Lcom/mob/mobapm/core/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mobapm/core/e;->a()V

    .line 49
    invoke-static {}, Lcom/mob/mobapm/core/b;->e()Lcom/mob/mobapm/core/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mobapm/core/b;->d()V

    .line 50
    invoke-static {}, Lcom/mob/mobapm/core/a;->d()Lcom/mob/mobapm/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mobapm/core/k;->b()V

    .line 51
    invoke-static {}, Lcom/mob/mobapm/core/j;->d()Lcom/mob/mobapm/core/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mobapm/core/k;->b()V

    .line 52
    invoke-static {}, Lcom/mob/mobapm/core/i;->d()Lcom/mob/mobapm/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mobapm/core/k;->b()V

    .line 54
    iget-object v1, p0, Lcom/mob/mobapm/core/m/a$a;->c:Lcom/mob/mobapm/core/m/a;

    invoke-static {v1}, Lcom/mob/mobapm/core/m/a;->a(Lcom/mob/mobapm/core/m/a;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 55
    iget-object v1, p0, Lcom/mob/mobapm/core/m/a$a;->c:Lcom/mob/mobapm/core/m/a;

    invoke-static {v1}, Lcom/mob/mobapm/core/m/a;->a(Lcom/mob/mobapm/core/m/a;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/mobapm/core/m/a$a;->a:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/mob/mobapm/core/m/a$a;->b:Ljava/lang/Throwable;

    invoke-interface {v1, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_2
    throw v0
.end method
