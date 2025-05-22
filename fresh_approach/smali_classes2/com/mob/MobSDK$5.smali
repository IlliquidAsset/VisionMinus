.class final Lcom/mob/MobSDK$5;
.super Ljava/lang/Object;
.source "MobSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/MobSDK;->canIContinueBusiness(Lcom/mob/commons/MobProduct;Lcom/mob/commons/dialog/entity/InternalPolicyUi;Lcom/mob/OperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/MobProduct;

.field final synthetic b:Lcom/mob/OperationCallback;

.field final synthetic c:Lcom/mob/commons/dialog/entity/InternalPolicyUi;


# direct methods
.method constructor <init>(Lcom/mob/commons/MobProduct;Lcom/mob/OperationCallback;Lcom/mob/commons/dialog/entity/InternalPolicyUi;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/mob/MobSDK$5;->a:Lcom/mob/commons/MobProduct;

    iput-object p2, p0, Lcom/mob/MobSDK$5;->b:Lcom/mob/OperationCallback;

    iput-object p3, p0, Lcom/mob/MobSDK$5;->c:Lcom/mob/commons/dialog/entity/InternalPolicyUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/mob/MobSDK$5;->a:Lcom/mob/commons/MobProduct;

    if-nez v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/mob/MobSDK$5;->b:Lcom/mob/OperationCallback;

    new-instance v1, Lcom/mob/commons/dialog/PolicyThrowable;

    const-string v2, "MobProduct can not be null"

    invoke-direct {v1, v2}, Lcom/mob/commons/dialog/PolicyThrowable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mob/OperationCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 714
    :cond_0
    invoke-static {}, Lcom/mob/commons/dialog/a;->a()Lcom/mob/commons/dialog/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/MobSDK$5;->a:Lcom/mob/commons/MobProduct;

    iget-object v2, p0, Lcom/mob/MobSDK$5;->c:Lcom/mob/commons/dialog/entity/InternalPolicyUi;

    iget-object v3, p0, Lcom/mob/MobSDK$5;->b:Lcom/mob/OperationCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/commons/dialog/a;->a(Lcom/mob/commons/MobProduct;Lcom/mob/commons/dialog/entity/InternalPolicyUi;Lcom/mob/OperationCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 716
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    .line 717
    iget-object v1, p0, Lcom/mob/MobSDK$5;->b:Lcom/mob/OperationCallback;

    invoke-virtual {v1, v0}, Lcom/mob/OperationCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
