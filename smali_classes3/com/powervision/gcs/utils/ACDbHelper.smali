.class public Lcom/powervision/gcs/utils/ACDbHelper;
.super Ljava/lang/Object;
.source "ACDbHelper.java"


# static fields
.field private static dbHelper:Lcom/powervision/gcs/utils/ACDbHelper;


# instance fields
.field daoConfig:Lorg/xutils/DbManager$DaoConfig;

.field private db:Lorg/xutils/DbManager;

.field private final dbname:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "gcs_activite_info"

    .line 18
    iput-object v0, p0, Lcom/powervision/gcs/utils/ACDbHelper;->dbname:Ljava/lang/String;

    .line 20
    new-instance v1, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {v1}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    .line 21
    invoke-virtual {v1, v0}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/utils/ACDbHelper$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/utils/ACDbHelper$2;-><init>(Lcom/powervision/gcs/utils/ACDbHelper;)V

    .line 23
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/utils/ACDbHelper$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/utils/ACDbHelper$1;-><init>(Lcom/powervision/gcs/utils/ACDbHelper;)V

    .line 30
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/utils/ACDbHelper;->daoConfig:Lorg/xutils/DbManager$DaoConfig;

    .line 45
    :try_start_0
    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/utils/ACDbHelper;->db:Lorg/xutils/DbManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/powervision/gcs/utils/ACDbHelper;
    .locals 2

    .line 52
    sget-object v0, Lcom/powervision/gcs/utils/ACDbHelper;->dbHelper:Lcom/powervision/gcs/utils/ACDbHelper;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/powervision/gcs/utils/ACDbHelper;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/powervision/gcs/utils/ACDbHelper;->dbHelper:Lcom/powervision/gcs/utils/ACDbHelper;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/powervision/gcs/utils/ACDbHelper;

    invoke-direct {v1}, Lcom/powervision/gcs/utils/ACDbHelper;-><init>()V

    sput-object v1, Lcom/powervision/gcs/utils/ACDbHelper;->dbHelper:Lcom/powervision/gcs/utils/ACDbHelper;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/gcs/utils/ACDbHelper;->dbHelper:Lcom/powervision/gcs/utils/ACDbHelper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized delete(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/ACDbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 111
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 109
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

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/ACDbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 127
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    :try_start_1
    invoke-virtual {p1}, Lorg/xutils/ex/DbException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 125
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/ACDbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->replace(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 294
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 291
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 292
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replaceAll(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/ACDbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->replace(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 311
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 308
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 309
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized save(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/ACDbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 76
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    :try_start_1
    invoke-virtual {p1}, Lorg/xutils/ex/DbException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 74
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

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/ACDbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 93
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    :try_start_1
    invoke-virtual {p1}, Lorg/xutils/ex/DbException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 91
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized search(Ljava/lang/Class;)Ljava/util/List;
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

    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/ACDbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

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

    goto :goto_0

    :catch_0
    move-exception p1

    .line 246
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 248
    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0

    throw p1
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

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/ACDbHelper;->db:Lorg/xutils/DbManager;

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

    .line 277
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

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/ACDbHelper;->db:Lorg/xutils/DbManager;

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

    .line 261
    monitor-exit p0

    return-object p1
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

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/ACDbHelper;->db:Lorg/xutils/DbManager;

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

    .line 195
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 197
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

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/ACDbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 161
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 158
    :try_start_1
    invoke-virtual {p1}, Lorg/xutils/ex/DbException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 159
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/ACDbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 145
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 143
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized update(Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/ACDbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1, p2}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 179
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 176
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 177
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method
