.class public Lcom/powervision/gcs/Texture/PendingThreadAider;
.super Ljava/lang/Object;
.source "PendingThreadAider.java"


# instance fields
.field mRunOnDraw:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/Texture/PendingThreadAider;->mRunOnDraw:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public addToPending(Ljava/lang/Runnable;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/powervision/gcs/Texture/PendingThreadAider;->mRunOnDraw:Ljava/util/LinkedList;

    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/Texture/PendingThreadAider;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public runPendings()V
    .locals 1

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/Texture/PendingThreadAider;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/powervision/gcs/Texture/PendingThreadAider;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method
