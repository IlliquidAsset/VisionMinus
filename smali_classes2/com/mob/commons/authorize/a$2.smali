.class Lcom/mob/commons/authorize/a$2;
.super Ljava/lang/Thread;
.source "Authorizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/authorize/a;->a(Ljava/util/HashMap;ZLcom/mob/commons/MobProduct;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/mob/commons/MobProduct;

.field final synthetic d:Lcom/mob/commons/authorize/a;


# direct methods
.method constructor <init>(Lcom/mob/commons/authorize/a;ZLjava/util/HashMap;Lcom/mob/commons/MobProduct;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/mob/commons/authorize/a$2;->d:Lcom/mob/commons/authorize/a;

    iput-boolean p2, p0, Lcom/mob/commons/authorize/a$2;->a:Z

    iput-object p3, p0, Lcom/mob/commons/authorize/a$2;->b:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/mob/commons/authorize/a$2;->c:Lcom/mob/commons/MobProduct;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 304
    invoke-static {}, Lcom/mob/commons/authorize/a;->b()Ljava/lang/String;

    move-result-object v0

    monitor-enter v0

    .line 306
    :try_start_0
    iget-boolean v1, p0, Lcom/mob/commons/authorize/a$2;->a:Z

    .line 307
    iget-object v2, p0, Lcom/mob/commons/authorize/a$2;->d:Lcom/mob/commons/authorize/a;

    iget-object v3, p0, Lcom/mob/commons/authorize/a$2;->b:Ljava/util/HashMap;

    invoke-static {v2, v3}, Lcom/mob/commons/authorize/a;->a(Lcom/mob/commons/authorize/a;Ljava/util/HashMap;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mob/commons/authorize/a$2;->d:Lcom/mob/commons/authorize/a;

    invoke-static {v2}, Lcom/mob/commons/authorize/a;->b(Lcom/mob/commons/authorize/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/mob/commons/authorize/a$2;->d:Lcom/mob/commons/authorize/a;

    iget-object v2, p0, Lcom/mob/commons/authorize/a$2;->b:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/mob/commons/authorize/a$2;->b:Ljava/util/HashMap;

    const-string v5, "duid"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/mob/commons/authorize/a;->a(Lcom/mob/commons/authorize/a;Ljava/util/HashMap;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 312
    :cond_1
    iget-object v2, p0, Lcom/mob/commons/authorize/a$2;->d:Lcom/mob/commons/authorize/a;

    iget-object v4, p0, Lcom/mob/commons/authorize/a$2;->b:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/mob/commons/authorize/a$2;->c:Lcom/mob/commons/MobProduct;

    invoke-static {v2, v4, v5}, Lcom/mob/commons/authorize/a;->a(Lcom/mob/commons/authorize/a;Ljava/util/HashMap;Lcom/mob/commons/MobProduct;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-eqz v3, :cond_3

    .line 317
    iget-object v1, p0, Lcom/mob/commons/authorize/a$2;->d:Lcom/mob/commons/authorize/a;

    iget-object v2, p0, Lcom/mob/commons/authorize/a$2;->b:Ljava/util/HashMap;

    invoke-static {v1, v2}, Lcom/mob/commons/authorize/a;->b(Lcom/mob/commons/authorize/a;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 320
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 322
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
