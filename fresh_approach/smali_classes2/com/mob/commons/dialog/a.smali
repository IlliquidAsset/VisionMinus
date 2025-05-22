.class public Lcom/mob/commons/dialog/a;
.super Ljava/lang/Object;
.source "AuthDialogManager.java"


# static fields
.field private static a:Lcom/mob/commons/dialog/a;


# instance fields
.field private b:Lcom/mob/commons/MobProduct;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mob/commons/dialog/a;
    .locals 2

    .line 17
    sget-object v0, Lcom/mob/commons/dialog/a;->a:Lcom/mob/commons/dialog/a;

    if-nez v0, :cond_1

    .line 18
    const-class v0, Lcom/mob/commons/dialog/a;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/mob/commons/dialog/a;->a:Lcom/mob/commons/dialog/a;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/mob/commons/dialog/a;

    invoke-direct {v1}, Lcom/mob/commons/dialog/a;-><init>()V

    sput-object v1, Lcom/mob/commons/dialog/a;->a:Lcom/mob/commons/dialog/a;

    .line 22
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/commons/dialog/a;->a:Lcom/mob/commons/dialog/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/mob/commons/MobProduct;Lcom/mob/commons/dialog/entity/InternalPolicyUi;Lcom/mob/OperationCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/MobProduct;",
            "Lcom/mob/commons/dialog/entity/InternalPolicyUi;",
            "Lcom/mob/OperationCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 29
    :try_start_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    const-string v0, "canIContinueBusiness()"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 30
    iput-object p1, p0, Lcom/mob/commons/dialog/a;->b:Lcom/mob/commons/MobProduct;

    .line 32
    invoke-static {}, Lcom/mob/commons/a;->c()Z

    move-result p1

    .line 33
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "====> ppNece: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 p2, 0x1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    .line 37
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/mob/OperationCallback;->onComplete(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 42
    :cond_1
    invoke-static {}, Lcom/mob/commons/a;->d()Z

    move-result p1

    .line 43
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====> ppGrtd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    .line 47
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/mob/OperationCallback;->onComplete(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    if-eqz p3, :cond_4

    .line 52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/mob/OperationCallback;->onComplete(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 67
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    if-eqz p3, :cond_4

    .line 69
    invoke-virtual {p3, p1}, Lcom/mob/OperationCallback;->onFailure(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method
