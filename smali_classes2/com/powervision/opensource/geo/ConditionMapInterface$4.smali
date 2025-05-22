.class Lcom/powervision/opensource/geo/ConditionMapInterface$4;
.super Ljava/lang/Object;
.source "ConditionMapInterface.java"

# interfaces
.implements Lcom/powervision/opensource/CommonCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/opensource/geo/ConditionMapInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;


# direct methods
.method constructor <init>(Lcom/powervision/opensource/geo/ConditionMapInterface;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$4;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs failed([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs success([Ljava/lang/Object;)V
    .locals 2

    .line 517
    :goto_0
    iget-object p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$4;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-boolean p1, p1, Lcom/powervision/opensource/geo/ConditionMapInterface;->running:Z

    if-eqz p1, :cond_0

    .line 520
    :try_start_0
    iget-object p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$4;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-object p1, p1, Lcom/powervision/opensource/geo/ConditionMapInterface;->opHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-wide/16 v0, 0x5dc

    .line 522
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 524
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs timeout([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
