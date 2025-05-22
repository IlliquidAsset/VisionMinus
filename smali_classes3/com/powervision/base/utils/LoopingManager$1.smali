.class Lcom/powervision/base/utils/LoopingManager$1;
.super Ljava/lang/Object;
.source "LoopingManager.java"

# interfaces
.implements Lcom/powervision/opensource/CommonCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/utils/LoopingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/utils/LoopingManager;


# direct methods
.method constructor <init>(Lcom/powervision/base/utils/LoopingManager;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/powervision/base/utils/LoopingManager$1;->this$0:Lcom/powervision/base/utils/LoopingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs failed([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs success([Ljava/lang/Object;)V
    .locals 8

    .line 92
    :goto_0
    sget-boolean p1, Lcom/powervision/base/utils/LoopingManager;->running:Z

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x3e8

    .line 94
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 98
    :goto_1
    iget-object p1, p0, Lcom/powervision/base/utils/LoopingManager$1;->this$0:Lcom/powervision/base/utils/LoopingManager;

    iget-object p1, p1, Lcom/powervision/base/utils/LoopingManager;->works:Ljava/util/List;

    monitor-enter p1

    const/4 v0, 0x0

    .line 100
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/powervision/base/utils/LoopingManager$1;->this$0:Lcom/powervision/base/utils/LoopingManager;

    iget-object v1, v1, Lcom/powervision/base/utils/LoopingManager;->works:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/powervision/base/utils/LoopingManager$1;->this$0:Lcom/powervision/base/utils/LoopingManager;

    iget-object v1, v1, Lcom/powervision/base/utils/LoopingManager;->works:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/utils/LoopingManager$Work;

    .line 102
    invoke-virtual {v1}, Lcom/powervision/base/utils/LoopingManager$Work;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 104
    invoke-virtual {v1, v2, v3}, Lcom/powervision/base/utils/LoopingManager$Work;->setTime(J)V

    .line 107
    invoke-virtual {v1}, Lcom/powervision/base/utils/LoopingManager$Work;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/powervision/base/utils/LoopingManager$Work;->getTime()J

    move-result-wide v2

    iget-wide v6, v1, Lcom/powervision/base/utils/LoopingManager$Work;->delayTime:J

    rem-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 109
    :cond_0
    iget-object v1, v1, Lcom/powervision/base/utils/LoopingManager$Work;->runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 112
    :cond_2
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    return-void
.end method

.method public varargs timeout([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
