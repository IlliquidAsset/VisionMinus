.class final Lcom/mob/commons/a$6;
.super Ljava/lang/Object;
.source "CltsInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a;->c(ZLcom/mob/OperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/mob/OperationCallback;


# direct methods
.method constructor <init>(ZLcom/mob/OperationCallback;)V
    .locals 0

    .line 588
    iput-boolean p1, p0, Lcom/mob/commons/a$6;->a:Z

    iput-object p2, p0, Lcom/mob/commons/a$6;->b:Lcom/mob/OperationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 592
    :try_start_0
    iget-boolean v1, p0, Lcom/mob/commons/a$6;->a:Z

    invoke-static {v0, v1}, Lcom/mob/commons/a;->a(IZ)V

    const/4 v1, 0x0

    .line 594
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/Boolean;)V

    .line 595
    iget-object v1, p0, Lcom/mob/commons/a$6;->b:Lcom/mob/OperationCallback;

    if-eqz v1, :cond_0

    .line 596
    new-instance v1, Lcom/mob/commons/a$6$1;

    invoke-direct {v1, p0}, Lcom/mob/commons/a$6$1;-><init>(Lcom/mob/commons/a$6;)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 605
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Submit privacy grant result error"

    invoke-virtual {v2, v1, v4, v3}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 607
    iget-boolean v2, p0, Lcom/mob/commons/a$6;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/Boolean;)V

    .line 608
    iget-object v2, p0, Lcom/mob/commons/a$6;->b:Lcom/mob/OperationCallback;

    if-eqz v2, :cond_0

    .line 609
    new-instance v2, Lcom/mob/commons/a$6$2;

    invoke-direct {v2, p0, v1}, Lcom/mob/commons/a$6$2;-><init>(Lcom/mob/commons/a$6;Ljava/lang/Throwable;)V

    invoke-static {v0, v2}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    :cond_0
    :goto_0
    return-void
.end method
