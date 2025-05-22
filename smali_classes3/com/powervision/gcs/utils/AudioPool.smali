.class public Lcom/powervision/gcs/utils/AudioPool;
.super Ljava/lang/Object;
.source "AudioPool.java"


# static fields
.field private static volatile mInstance:Lcom/powervision/gcs/utils/AudioPool;


# instance fields
.field pool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/utils/AudioPool;->pool:Ljava/util/List;

    return-void
.end method

.method public static getIntance()Lcom/powervision/gcs/utils/AudioPool;
    .locals 2

    .line 17
    sget-object v0, Lcom/powervision/gcs/utils/AudioPool;->mInstance:Lcom/powervision/gcs/utils/AudioPool;

    if-nez v0, :cond_1

    .line 18
    const-class v0, Lcom/powervision/gcs/utils/AudioPool;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/powervision/gcs/utils/AudioPool;->mInstance:Lcom/powervision/gcs/utils/AudioPool;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/powervision/gcs/utils/AudioPool;

    invoke-direct {v1}, Lcom/powervision/gcs/utils/AudioPool;-><init>()V

    sput-object v1, Lcom/powervision/gcs/utils/AudioPool;->mInstance:Lcom/powervision/gcs/utils/AudioPool;

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
    sget-object v0, Lcom/powervision/gcs/utils/AudioPool;->mInstance:Lcom/powervision/gcs/utils/AudioPool;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addAudio(I)V
    .locals 1

    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/AudioPool;->pool:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getHead()I
    .locals 2

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/AudioPool;->pool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/powervision/gcs/utils/AudioPool;->pool:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 36
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/AudioPool;->pool:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTail()I
    .locals 2

    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/AudioPool;->pool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/powervision/gcs/utils/AudioPool;->pool:Ljava/util/List;

    iget-object v1, p0, Lcom/powervision/gcs/utils/AudioPool;->pool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 44
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
