.class public Lcom/powervision/base/utils/DbHelper;
.super Ljava/lang/Object;
.source "DbHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DbHelper"

.field private static dbHelper:Lcom/powervision/base/utils/DbHelper; = null

.field private static final dbname:Ljava/lang/String; = "gcs_media_info"


# instance fields
.field daoConfig:Lorg/xutils/DbManager$DaoConfig;

.field private db:Lorg/xutils/DbManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {v0}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    const-string v1, "gcs_media_info"

    .line 30
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    const/4 v1, 0x2

    .line 31
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/powervision/base/utils/DbHelper$2;

    invoke-direct {v1, p0}, Lcom/powervision/base/utils/DbHelper$2;-><init>(Lcom/powervision/base/utils/DbHelper;)V

    .line 32
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/powervision/base/utils/DbHelper$1;

    invoke-direct {v1, p0}, Lcom/powervision/base/utils/DbHelper$1;-><init>(Lcom/powervision/base/utils/DbHelper;)V

    .line 39
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/utils/DbHelper;->daoConfig:Lorg/xutils/DbManager$DaoConfig;

    .line 72
    :try_start_0
    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/utils/DbHelper;->db:Lorg/xutils/DbManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/powervision/base/utils/DbHelper;
    .locals 2

    .line 80
    sget-object v0, Lcom/powervision/base/utils/DbHelper;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    if-nez v0, :cond_1

    .line 81
    const-class v0, Lcom/powervision/base/utils/DbHelper;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lcom/powervision/base/utils/DbHelper;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Lcom/powervision/base/utils/DbHelper;

    invoke-direct {v1}, Lcom/powervision/base/utils/DbHelper;-><init>()V

    sput-object v1, Lcom/powervision/base/utils/DbHelper;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    .line 85
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 87
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/base/utils/DbHelper;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized delete(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/utils/DbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 140
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 138
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteAll(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/utils/DbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 156
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 153
    :try_start_1
    invoke-virtual {p1}, Lorg/xutils/ex/DbException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 154
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteCriteria(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/utils/DbHelper;->db:Lorg/xutils/DbManager;

    const-string v1, "="

    invoke-static {p2, v1, p3}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 175
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 173
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/utils/DbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->replace(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 349
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 346
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 347
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replaceAll(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/utils/DbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->replace(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 364
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 361
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 362
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized save(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/utils/DbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 105
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    :try_start_1
    invoke-virtual {p1}, Lorg/xutils/ex/DbException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 103
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveAll(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/utils/DbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 122
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    :try_start_1
    invoke-virtual {p1}, Lorg/xutils/ex/DbException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 120
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public search(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/utils/DbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 302
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized search(Ljava/lang/Class;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/utils/DbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object p1

    const-string v0, "tag"

    const-string v1, "in"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v4

    invoke-virtual {p1, v0, v1, v3}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object p1

    const-string p2, "modifyTime"

    invoke-virtual {p1, p2, v2}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;Z)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_0
    const/4 p1, 0x0

    .line 287
    monitor-exit p0

    return-object p1
.end method

.method public declared-synchronized searchCriteria(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/utils/DbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object p1

    const-string v0, "="

    invoke-static {p2, v0, p3}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/xutils/db/Selector;->where(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_0
    const/4 p1, 0x0

    .line 333
    monitor-exit p0

    return-object p1
.end method

.method public declared-synchronized searchDesc(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/utils/DbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object p1

    const-string v0, "id"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;Z)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_0
    const/4 p1, 0x0

    .line 317
    monitor-exit p0

    return-object p1
.end method

.method public declared-synchronized searchImageByPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/utils/DbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object p1

    const-string v0, "imagePath"

    const-string v1, "in"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 259
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 261
    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized searchOne(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/utils/DbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object p1

    const-string v0, "id"

    const-string v1, "in"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 242
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 244
    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized searchVideoByPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/utils/DbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object p1

    const-string v0, "videoPath"

    const-string v1, "in"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 276
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 278
    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized upDataAll(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/utils/DbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 208
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 205
    :try_start_1
    invoke-virtual {p1}, Lorg/xutils/ex/DbException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 206
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/utils/DbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 192
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 189
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 190
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized update(Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/utils/DbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1, p2}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 226
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 223
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 224
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method
