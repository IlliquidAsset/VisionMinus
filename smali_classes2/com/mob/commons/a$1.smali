.class final Lcom/mob/commons/a$1;
.super Ljava/lang/Object;
.source "CltsInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    .line 85
    :try_start_0
    invoke-static {}, Lcom/mob/commons/a;->l()V

    .line 87
    invoke-static {}, Lcom/mob/commons/a;->c()Z

    move-result v1

    .line 88
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "====> ppNece: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 91
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v3, "====> Entr 1"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 92
    invoke-static {v2}, Lcom/mob/commons/a;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 93
    invoke-static {v2}, Lcom/mob/commons/a;->b(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 94
    invoke-static {}, Lcom/mob/commons/a;->m()I

    move-result v1

    invoke-static {v1}, Lcom/mob/commons/a;->b(I)I

    .line 95
    invoke-static {}, Lcom/mob/commons/a;->n()V

    return-void

    .line 100
    :cond_0
    invoke-static {}, Lcom/mob/commons/a;->d()Z

    move-result v1

    .line 101
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "====> isAgrPp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 104
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v4, "====> Entr 2"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 105
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/commons/a;->b(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 107
    invoke-static {v2}, Lcom/mob/commons/a;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 108
    invoke-static {}, Lcom/mob/commons/a;->m()I

    move-result v1

    invoke-static {v1}, Lcom/mob/commons/a;->b(I)I

    .line 109
    invoke-static {}, Lcom/mob/commons/a;->n()V

    return-void

    .line 113
    :cond_1
    invoke-static {}, Lcom/mob/commons/a;->j()Z

    move-result v1

    .line 114
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "====> cltStch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz v1, :cond_2

    .line 117
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v3, "====> Entr 3"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 119
    invoke-static {}, Lcom/mob/commons/a;->k()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/commons/a;->b(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 121
    invoke-static {v2}, Lcom/mob/commons/a;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 122
    invoke-static {}, Lcom/mob/commons/a;->m()I

    move-result v1

    invoke-static {v1}, Lcom/mob/commons/a;->b(I)I

    .line 123
    invoke-static {}, Lcom/mob/commons/a;->n()V

    goto :goto_0

    .line 125
    :cond_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v4, "====> Entr cltSwth=false"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 131
    invoke-static {}, Lcom/mob/commons/b;->ap()V

    .line 137
    invoke-static {v2}, Lcom/mob/commons/b;->a(Ljava/util/HashMap;)V

    .line 138
    invoke-static {v3}, Lcom/mob/commons/a;->a(I)V

    .line 140
    :goto_0
    invoke-static {}, Lcom/mob/commons/a;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 142
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Clt init error"

    invoke-virtual {v2, v1, v3, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_1
    return-void
.end method
