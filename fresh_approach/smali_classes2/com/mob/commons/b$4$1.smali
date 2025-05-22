.class Lcom/mob/commons/b$4$1;
.super Ljava/lang/Object;
.source "CommonConfig.java"

# interfaces
.implements Lcom/mob/commons/LockAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/b$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/b$4;


# direct methods
.method constructor <init>(Lcom/mob/commons/b$4;)V
    .locals 0

    .line 1112
    iput-object p1, p0, Lcom/mob/commons/b$4$1;->a:Lcom/mob/commons/b$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 2

    .line 1115
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->ax()Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1116
    :try_start_1
    iget-object v0, p0, Lcom/mob/commons/b$4$1;->a:Lcom/mob/commons/b$4;

    iget-object v0, v0, Lcom/mob/commons/b$4;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/commons/b;->a(Ljava/lang/String;)V

    .line 1117
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1118
    :try_start_2
    iget-object p1, p0, Lcom/mob/commons/b$4$1;->a:Lcom/mob/commons/b$4;

    invoke-static {p1}, Lcom/mob/commons/b$4;->a(Lcom/mob/commons/b$4;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1117
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 1120
    invoke-static {}, Lcom/mob/commons/d;->a()Lcom/mob/commons/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mob/commons/d;->a(ILjava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
