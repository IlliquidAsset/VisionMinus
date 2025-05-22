.class public Lcom/powervision/media/model/impl/DeviceMediaModel;
.super Ljava/lang/Object;
.source "DeviceMediaModel.java"

# interfaces
.implements Lcom/powervision/media/model/IDeviceMediaModel;


# instance fields
.field private mAllData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastAllDataTime:Ljava/lang/String;

.field private mLastPhotoTime:Ljava/lang/String;

.field private mLastVideoTime:Ljava/lang/String;

.field private mOriginAllData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginVideos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVideos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mAllData:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mPhotos:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mVideos:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mOriginAllData:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mOriginPhotos:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mOriginVideos:Ljava/util/ArrayList;

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastAllDataTime:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastPhotoTime:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastVideoTime:Ljava/lang/String;

    return-void
.end method

.method private generateParameter(Lcom/powervision/localhttp/entity/FileInfo;)Lcom/powervision/localhttp/entity/FileInfo;
    .locals 2

    .line 152
    new-instance v0, Lcom/powervision/localhttp/entity/FileInfo;

    invoke-direct {v0}, Lcom/powervision/localhttp/entity/FileInfo;-><init>()V

    const-string v1, "title"

    .line 153
    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/entity/FileInfo;->setType(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/FileInfo;->getCreate_time()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/entity/FileInfo;->setCreate_time(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized generalList(Lcom/powervision/localhttp/entity/FileInfo;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 87
    :try_start_0
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mOriginPhotos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastPhotoTime:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/FileInfo;->getCreate_time()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 89
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 91
    :cond_0
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mPhotos:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/powervision/media/model/impl/DeviceMediaModel;->generateParameter(Lcom/powervision/localhttp/entity/FileInfo;)Lcom/powervision/localhttp/entity/FileInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/FileInfo;->getCreate_time()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastPhotoTime:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 96
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mOriginVideos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastVideoTime:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/FileInfo;->getCreate_time()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 98
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mVideos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_2
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mVideos:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/powervision/media/model/impl/DeviceMediaModel;->generateParameter(Lcom/powervision/localhttp/entity/FileInfo;)Lcom/powervision/localhttp/entity/FileInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mVideos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/FileInfo;->getCreate_time()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastVideoTime:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_3
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mOriginAllData:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastAllDataTime:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/FileInfo;->getCreate_time()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 107
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mAllData:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_4
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mAllData:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/powervision/media/model/impl/DeviceMediaModel;->generateParameter(Lcom/powervision/localhttp/entity/FileInfo;)Lcom/powervision/localhttp/entity/FileInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mAllData:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/FileInfo;->getCreate_time()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastAllDataTime:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized generalListAfterDelete(Lcom/powervision/localhttp/entity/FileInfo;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 119
    :try_start_0
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastPhotoTime:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/FileInfo;->getCreate_time()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 120
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_0
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mPhotos:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/powervision/media/model/impl/DeviceMediaModel;->generateParameter(Lcom/powervision/localhttp/entity/FileInfo;)Lcom/powervision/localhttp/entity/FileInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/FileInfo;->getCreate_time()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastPhotoTime:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 127
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastVideoTime:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/FileInfo;->getCreate_time()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 128
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mVideos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_2
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mVideos:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/powervision/media/model/impl/DeviceMediaModel;->generateParameter(Lcom/powervision/localhttp/entity/FileInfo;)Lcom/powervision/localhttp/entity/FileInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mVideos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/FileInfo;->getCreate_time()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastVideoTime:Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_3
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastAllDataTime:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/FileInfo;->getCreate_time()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 136
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mAllData:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_4
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mAllData:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/powervision/media/model/impl/DeviceMediaModel;->generateParameter(Lcom/powervision/localhttp/entity/FileInfo;)Lcom/powervision/localhttp/entity/FileInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object p2, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mAllData:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/FileInfo;->getCreate_time()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastAllDataTime:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public getListByType(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 76
    iget-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mPhotos:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 78
    iget-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mVideos:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    return-object p1

    .line 80
    :cond_3
    iget-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mAllData:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    return-object p1
.end method

.method public getOriginListByType(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 65
    iget-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mOriginPhotos:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 67
    iget-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mOriginVideos:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    return-object p1

    .line 69
    :cond_3
    iget-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mOriginAllData:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    return-object p1
.end method

.method public declared-synchronized initList(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 32
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mAllData:Ljava/util/ArrayList;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mOriginAllData:Ljava/util/ArrayList;

    const-string p1, ""

    .line 34
    iput-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastAllDataTime:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mPhotos:Ljava/util/ArrayList;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mOriginPhotos:Ljava/util/ArrayList;

    const-string p1, ""

    .line 38
    iput-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastPhotoTime:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mVideos:Ljava/util/ArrayList;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mOriginVideos:Ljava/util/ArrayList;

    const-string p1, ""

    .line 42
    iput-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastVideoTime:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    monitor-exit p0

    throw p1

    .line 44
    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public resetList(I)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 51
    iput-object v0, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastPhotoTime:Ljava/lang/String;

    .line 52
    iget-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 54
    iput-object v0, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastVideoTime:Ljava/lang/String;

    .line 55
    iget-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mVideos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 57
    :cond_1
    iput-object v0, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mLastAllDataTime:Ljava/lang/String;

    .line 58
    iget-object p1, p0, Lcom/powervision/media/model/impl/DeviceMediaModel;->mAllData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    return-void
.end method
