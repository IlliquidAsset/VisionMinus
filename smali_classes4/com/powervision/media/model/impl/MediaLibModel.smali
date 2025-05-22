.class public Lcom/powervision/media/model/impl/MediaLibModel;
.super Ljava/lang/Object;
.source "MediaLibModel.java"

# interfaces
.implements Lcom/powervision/media/model/IMediaLibModel;


# instance fields
.field private mAllData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation
.end field

.field private mLastAllDataTime:Ljava/lang/String;

.field private mLastPosition:I

.field private mOriginAllData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mAllData:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mOriginAllData:Ljava/util/ArrayList;

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mLastAllDataTime:Ljava/lang/String;

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mLastPosition:I

    return-void
.end method

.method private generateParameter(Lcom/powervision/localhttp/entity/MediaLib;)Lcom/powervision/localhttp/entity/MediaLib;
    .locals 2

    .line 89
    new-instance v0, Lcom/powervision/localhttp/entity/MediaLib;

    invoke-direct {v0}, Lcom/powervision/localhttp/entity/MediaLib;-><init>()V

    const/16 v1, 0x63

    .line 90
    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/entity/MediaLib;->setAssetType(I)V

    .line 91
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getCreate_time()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/entity/MediaLib;->setCreateDate(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized generalList(Lcom/powervision/localhttp/entity/MediaLib;)V
    .locals 2

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mOriginAllData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mLastAllDataTime:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getCreate_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget v0, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mLastPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mAllData:Ljava/util/ArrayList;

    iget v1, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mLastPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/MediaLib;

    .line 55
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/entity/MediaLib;->setSelected(Z)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mAllData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_1
    invoke-direct {p0, p1}, Lcom/powervision/media/model/impl/MediaLibModel;->generateParameter(Lcom/powervision/localhttp/entity/MediaLib;)Lcom/powervision/localhttp/entity/MediaLib;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/entity/MediaLib;->setSelected(Z)V

    .line 64
    iget-object v1, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mAllData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mAllData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getCreate_time()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mLastAllDataTime:Ljava/lang/String;

    .line 67
    iget-object p1, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mAllData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mLastPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized generalListAfterDelete(Lcom/powervision/localhttp/entity/MediaLib;)V
    .locals 2

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mLastAllDataTime:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getCreate_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mAllData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mAllData:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/powervision/media/model/impl/MediaLibModel;->generateParameter(Lcom/powervision/localhttp/entity/MediaLib;)Lcom/powervision/localhttp/entity/MediaLib;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mAllData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getCreate_time()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mLastAllDataTime:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getListData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mAllData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOriginListData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mOriginAllData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public resetList()V
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/powervision/media/model/impl/MediaLibModel;->resetListData()V

    .line 25
    iget-object v0, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mOriginAllData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public resetListData()V
    .locals 1

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mLastAllDataTime:Ljava/lang/String;

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mLastPosition:I

    .line 34
    iget-object v0, p0, Lcom/powervision/media/model/impl/MediaLibModel;->mAllData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
