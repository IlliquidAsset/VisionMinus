.class final Lcom/mob/commons/b$3;
.super Ljava/lang/Thread;
.source "CommonConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/b;->aq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 888
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 890
    :goto_0
    invoke-static {}, Lcom/mob/commons/b;->av()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mob/commons/b;->aw()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 893
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    .line 896
    :cond_0
    invoke-static {}, Lcom/mob/commons/b;->av()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mob/commons/b;->aw()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 897
    invoke-static {v0}, Lcom/mob/commons/b;->a(Z)Z

    const/4 v0, 0x0

    .line 898
    invoke-static {v0}, Lcom/mob/commons/b;->b(Z)Z

    .line 900
    :try_start_1
    invoke-static {}, Lcom/mob/commons/b;->at()Z

    move-result v1

    if-nez v1, :cond_1

    .line 901
    invoke-static {}, Lcom/mob/commons/b;->au()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 904
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 906
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/mob/commons/b;->a(Z)Z

    :cond_2
    return-void
.end method
