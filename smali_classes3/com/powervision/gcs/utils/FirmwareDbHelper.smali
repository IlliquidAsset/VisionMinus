.class public Lcom/powervision/gcs/utils/FirmwareDbHelper;
.super Ljava/lang/Object;
.source "FirmwareDbHelper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static dbHelper:Lcom/powervision/gcs/utils/FirmwareDbHelper;


# instance fields
.field daoConfig:Lorg/xutils/DbManager$DaoConfig;

.field private db:Lorg/xutils/DbManager;

.field private final dbname:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "gcs_firm_info"

    .line 22
    iput-object v0, p0, Lcom/powervision/gcs/utils/FirmwareDbHelper;->dbname:Ljava/lang/String;

    .line 24
    new-instance v1, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {v1}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    .line 25
    invoke-virtual {v1, v0}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/utils/FirmwareDbHelper$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/utils/FirmwareDbHelper$2;-><init>(Lcom/powervision/gcs/utils/FirmwareDbHelper;)V

    .line 27
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/utils/FirmwareDbHelper$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/utils/FirmwareDbHelper$1;-><init>(Lcom/powervision/gcs/utils/FirmwareDbHelper;)V

    .line 34
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/utils/FirmwareDbHelper;->daoConfig:Lorg/xutils/DbManager$DaoConfig;

    .line 49
    :try_start_0
    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/utils/FirmwareDbHelper;->db:Lorg/xutils/DbManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/powervision/gcs/utils/FirmwareDbHelper;
    .locals 2

    .line 56
    sget-object v0, Lcom/powervision/gcs/utils/FirmwareDbHelper;->dbHelper:Lcom/powervision/gcs/utils/FirmwareDbHelper;

    if-nez v0, :cond_1

    .line 57
    const-class v0, Lcom/powervision/gcs/utils/FirmwareDbHelper;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/powervision/gcs/utils/FirmwareDbHelper;->dbHelper:Lcom/powervision/gcs/utils/FirmwareDbHelper;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/powervision/gcs/utils/FirmwareDbHelper;

    invoke-direct {v1}, Lcom/powervision/gcs/utils/FirmwareDbHelper;-><init>()V

    sput-object v1, Lcom/powervision/gcs/utils/FirmwareDbHelper;->dbHelper:Lcom/powervision/gcs/utils/FirmwareDbHelper;

    .line 61
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 63
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/gcs/utils/FirmwareDbHelper;->dbHelper:Lcom/powervision/gcs/utils/FirmwareDbHelper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized delete(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/FirmwareDbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 115
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 113
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

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/FirmwareDbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 131
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    :try_start_1
    invoke-virtual {p1}, Lorg/xutils/ex/DbException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 129
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/FirmwareDbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->replace(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 298
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 295
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 296
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replaceAll(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/FirmwareDbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->replace(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 315
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 312
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 313
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized save(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/FirmwareDbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 80
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 77
    :try_start_1
    invoke-virtual {p1}, Lorg/xutils/ex/DbException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 78
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

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/FirmwareDbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 97
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    :try_start_1
    invoke-virtual {p1}, Lorg/xutils/ex/DbException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 95
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

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/FirmwareDbHelper;->db:Lorg/xutils/DbManager;

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

    .line 250
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 252
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

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/FirmwareDbHelper;->db:Lorg/xutils/DbManager;

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

    .line 281
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

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/FirmwareDbHelper;->db:Lorg/xutils/DbManager;

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

    .line 265
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

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/FirmwareDbHelper;->db:Lorg/xutils/DbManager;

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

    .line 199
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 201
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

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/FirmwareDbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 165
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 162
    :try_start_1
    invoke-virtual {p1}, Lorg/xutils/ex/DbException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 163
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/FirmwareDbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 149
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 146
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 147
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized update(Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/FirmwareDbHelper;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, p1, p2}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 183
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 180
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 181
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method
