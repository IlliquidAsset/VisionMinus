.class final Lcom/mob/MobSDK$3;
.super Ljava/lang/Object;
.source "MobSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/MobSDK;->submitPolicyGrantResult(ZLcom/mob/OperationCallback;)V
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

    .line 637
    iput-boolean p1, p0, Lcom/mob/MobSDK$3;->a:Z

    iput-object p2, p0, Lcom/mob/MobSDK$3;->b:Lcom/mob/OperationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 641
    :try_start_0
    iget-boolean v0, p0, Lcom/mob/MobSDK$3;->a:Z

    iget-object v1, p0, Lcom/mob/MobSDK$3;->b:Lcom/mob/OperationCallback;

    invoke-static {v0, v1}, Lcom/mob/commons/a;->a(ZLcom/mob/OperationCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 643
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    .line 644
    iget-object v1, p0, Lcom/mob/MobSDK$3;->b:Lcom/mob/OperationCallback;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 645
    new-instance v2, Lcom/mob/MobSDK$3$1;

    invoke-direct {v2, p0, v0}, Lcom/mob/MobSDK$3$1;-><init>(Lcom/mob/MobSDK$3;Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    :cond_0
    :goto_0
    return-void
.end method
