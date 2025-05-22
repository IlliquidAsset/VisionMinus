.class public Lcom/powervision/base/utils/LoopingManager;
.super Ljava/lang/Object;
.source "LoopingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/utils/LoopingManager$Work;,
        Lcom/powervision/base/utils/LoopingManager$Loopper;
    }
.end annotation


# static fields
.field private static manager:Lcom/powervision/base/utils/LoopingManager; = null

.field static running:Z = true


# instance fields
.field commonCallBack:Lcom/powervision/opensource/CommonCallBack;

.field works:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/utils/LoopingManager$Work;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/utils/LoopingManager;->works:Ljava/util/List;

    .line 89
    new-instance v0, Lcom/powervision/base/utils/LoopingManager$1;

    invoke-direct {v0, p0}, Lcom/powervision/base/utils/LoopingManager$1;-><init>(Lcom/powervision/base/utils/LoopingManager;)V

    iput-object v0, p0, Lcom/powervision/base/utils/LoopingManager;->commonCallBack:Lcom/powervision/opensource/CommonCallBack;

    .line 17
    new-instance v0, Lcom/powervision/base/utils/LoopingManager$Loopper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/base/utils/LoopingManager$Loopper;-><init>(Lcom/powervision/base/utils/LoopingManager$1;)V

    .line 18
    iget-object v1, p0, Lcom/powervision/base/utils/LoopingManager;->commonCallBack:Lcom/powervision/opensource/CommonCallBack;

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/LoopingManager$Loopper;->setCommonCallBack(Lcom/powervision/opensource/CommonCallBack;)V

    .line 19
    invoke-virtual {v0}, Lcom/powervision/base/utils/LoopingManager$Loopper;->start()V

    return-void
.end method

.method public static get()Lcom/powervision/base/utils/LoopingManager;
    .locals 1

    .line 24
    sget-object v0, Lcom/powervision/base/utils/LoopingManager;->manager:Lcom/powervision/base/utils/LoopingManager;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/powervision/base/utils/LoopingManager;

    invoke-direct {v0}, Lcom/powervision/base/utils/LoopingManager;-><init>()V

    sput-object v0, Lcom/powervision/base/utils/LoopingManager;->manager:Lcom/powervision/base/utils/LoopingManager;

    .line 28
    :cond_0
    sget-object v0, Lcom/powervision/base/utils/LoopingManager;->manager:Lcom/powervision/base/utils/LoopingManager;

    return-object v0
.end method

.method public static stopRunning()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    sput-boolean v0, Lcom/powervision/base/utils/LoopingManager;->running:Z

    return-void
.end method


# virtual methods
.method public addAWork(Ljava/lang/String;Ljava/lang/Runnable;I)V
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/powervision/base/utils/LoopingManager;->works:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 44
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/powervision/base/utils/LoopingManager;->works:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 45
    iget-object v3, p0, Lcom/powervision/base/utils/LoopingManager;->works:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/utils/LoopingManager$Work;

    .line 47
    iget-object v3, v3, Lcom/powervision/base/utils/LoopingManager$Work;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/powervision/base/utils/LoopingManager;->works:Ljava/util/List;

    new-instance v2, Lcom/powervision/base/utils/LoopingManager$Work;

    int-to-long v3, p3

    invoke-direct {v2, p2, v3, v4, p1}, Lcom/powervision/base/utils/LoopingManager$Work;-><init>(Ljava/lang/Runnable;JLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeWork(Ljava/lang/String;)V
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/powervision/base/utils/LoopingManager;->works:Ljava/util/List;

    monitor-enter v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 66
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/powervision/base/utils/LoopingManager;->works:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 67
    iget-object v4, p0, Lcom/powervision/base/utils/LoopingManager;->works:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/utils/LoopingManager$Work;

    .line 68
    iget-object v4, v4, Lcom/powervision/base/utils/LoopingManager$Work;->id:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 76
    iget-object p1, p0, Lcom/powervision/base/utils/LoopingManager;->works:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 78
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
