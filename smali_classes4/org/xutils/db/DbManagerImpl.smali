.class public final Lorg/xutils/db/DbManagerImpl;
.super Lorg/xutils/db/table/DbBase;
.source "DbManagerImpl.java"


# static fields
.field private static final DAO_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/xutils/DbManager$DaoConfig;",
            "Lorg/xutils/db/DbManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allowTransaction:Z

.field private daoConfig:Lorg/xutils/DbManager$DaoConfig;

.field private database:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xutils/db/DbManagerImpl;->DAO_MAP:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lorg/xutils/DbManager$DaoConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lorg/xutils/db/table/DbBase;-><init>()V

    if-eqz p1, :cond_1

    .line 61
    iput-object p1, p0, Lorg/xutils/db/DbManagerImpl;->daoConfig:Lorg/xutils/DbManager$DaoConfig;

    .line 62
    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->isAllowTransaction()Z

    move-result v0

    iput-boolean v0, p0, Lorg/xutils/db/DbManagerImpl;->allowTransaction:Z

    .line 64
    :try_start_0
    invoke-direct {p0, p1}, Lorg/xutils/db/DbManagerImpl;->openOrCreateDatabase(Lorg/xutils/DbManager$DaoConfig;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 65
    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->getDbOpenListener()Lorg/xutils/DbManager$DbOpenListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    invoke-interface {p1, p0}, Lorg/xutils/DbManager$DbOpenListener;->onDbOpened(Lorg/xutils/DbManager;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 73
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 74
    new-instance v0, Lorg/xutils/ex/DbException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_0
    move-exception p1

    .line 70
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 71
    throw p1

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "daoConfig may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private beginTransaction()V
    .locals 2

    .line 485
    iget-boolean v0, p0, Lorg/xutils/db/DbManagerImpl;->allowTransaction:Z

    if-eqz v0, :cond_1

    .line 486
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :cond_1
    :goto_0
    return-void
.end method

.method private endTransaction()V
    .locals 1

    .line 501
    iget-boolean v0, p0, Lorg/xutils/db/DbManagerImpl;->allowTransaction:Z

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    const-class v0, Lorg/xutils/db/DbManagerImpl;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 81
    :try_start_0
    new-instance p0, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {p0}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    .line 84
    :cond_0
    sget-object v1, Lorg/xutils/db/DbManagerImpl;->DAO_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/db/DbManagerImpl;

    if-nez v1, :cond_1

    .line 86
    new-instance v1, Lorg/xutils/db/DbManagerImpl;

    invoke-direct {v1, p0}, Lorg/xutils/db/DbManagerImpl;-><init>(Lorg/xutils/DbManager$DaoConfig;)V

    .line 87
    sget-object v2, Lorg/xutils/db/DbManagerImpl;->DAO_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_1
    iput-object p0, v1, Lorg/xutils/db/DbManagerImpl;->daoConfig:Lorg/xutils/DbManager$DaoConfig;

    .line 93
    :goto_0
    iget-object v2, v1, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    .line 95
    invoke-virtual {p0}, Lorg/xutils/DbManager$DaoConfig;->getDbVersion()I

    move-result v4

    if-eq v3, v4, :cond_4

    if-eqz v3, :cond_3

    .line 98
    invoke-virtual {p0}, Lorg/xutils/DbManager$DaoConfig;->getDbUpgradeListener()Lorg/xutils/DbManager$DbUpgradeListener;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 100
    invoke-interface {p0, v1, v3, v4}, Lorg/xutils/DbManager$DbUpgradeListener;->onUpgrade(Lorg/xutils/DbManager;II)V

    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {v1}, Lorg/xutils/db/DbManagerImpl;->dropDb()V

    .line 105
    :cond_3
    :goto_1
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getLastAutoIncrementId(Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT seq FROM sqlite_sequence WHERE name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' LIMIT 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_1

    .line 458
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 459
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :cond_0
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 462
    :try_start_1
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 464
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 465
    throw v0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method private openOrCreateDatabase(Lorg/xutils/DbManager$DaoConfig;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 411
    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->getDbDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 414
    invoke-static {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    goto :goto_0

    .line 416
    :cond_1
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/Application;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private saveBindingIdWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 436
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Lorg/xutils/db/table/ColumnEntity;->isAutoId()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 438
    invoke-static {p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 439
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getLastAutoIncrementId(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 443
    :cond_0
    invoke-virtual {v0, p2, v3, v4}, Lorg/xutils/db/table/ColumnEntity;->setAutoIdValue(Ljava/lang/Object;J)V

    return v2

    .line 446
    :cond_1
    invoke-static {p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    return v2
.end method

.method private saveOrUpdateWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 423
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lorg/xutils/db/table/ColumnEntity;->isAutoId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    invoke-virtual {v0, p2}, Lorg/xutils/db/table/ColumnEntity;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 426
    invoke-static {p1, p2, v0}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;[Ljava/lang/String;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    goto :goto_0

    .line 428
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/xutils/db/DbManagerImpl;->saveBindingIdWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Z

    goto :goto_0

    .line 431
    :cond_1
    invoke-static {p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    :goto_0
    return-void
.end method

.method private setTransactionSuccessful()V
    .locals 1

    .line 495
    iget-boolean v0, p0, Lorg/xutils/db/DbManagerImpl;->allowTransaction:Z

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    sget-object v0, Lorg/xutils/db/DbManagerImpl;->DAO_MAP:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->daoConfig:Lorg/xutils/DbManager$DaoConfig;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    sget-object v0, Lorg/xutils/db/DbManagerImpl;->DAO_MAP:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->daoConfig:Lorg/xutils/DbManager$DaoConfig;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object p1

    .line 275
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 278
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 280
    invoke-static {p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lorg/xutils/db/table/TableEntity;Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->executeUpdateDelete(Lorg/xutils/db/sqlite/SqlInfo;)I

    move-result p1

    .line 282
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 285
    throw p1
.end method

.method public delete(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 269
    invoke-virtual {p0, p1, v0}, Lorg/xutils/db/DbManagerImpl;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I

    return-void
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 245
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 247
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 248
    check-cast p1, Ljava/util/List;

    .line 249
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 250
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 263
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    return-void

    .line 252
    :cond_1
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 253
    invoke-static {v0, v1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    .line 263
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    return-void

    .line 258
    :cond_3
    :try_start_3
    invoke-static {v0, p1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 261
    :cond_4
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 263
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 264
    throw p1
.end method

.method public deleteById(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 234
    invoke-static {p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfoById(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 236
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 239
    throw p1
.end method

.method public execNonQuery(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 567
    :try_start_0
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 569
    new-instance v0, Lorg/xutils/ex/DbException;

    invoke-direct {v0, p1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 549
    :try_start_0
    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v1}, Lorg/xutils/db/sqlite/SqlInfo;->buildStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 556
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 558
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 552
    :try_start_2
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, p1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_1

    .line 556
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    .line 558
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 561
    :cond_1
    :goto_1
    throw p1
.end method

.method public execQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 585
    :try_start_0
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 587
    new-instance v0, Lorg/xutils/ex/DbException;

    invoke-direct {v0, p1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public execQuery(Lorg/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 576
    :try_start_0
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lorg/xutils/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xutils/db/sqlite/SqlInfo;->getBindArgsAsStrArray()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 578
    new-instance v0, Lorg/xutils/ex/DbException;

    invoke-direct {v0, p1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public executeUpdateDelete(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 530
    :try_start_0
    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 531
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 537
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 539
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return p1

    :catchall_1
    move-exception p1

    .line 533
    :try_start_2
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, p1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_1

    .line 537
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    .line 539
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 542
    :cond_1
    :goto_1
    throw p1
.end method

.method public executeUpdateDelete(Lorg/xutils/db/sqlite/SqlInfo;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 511
    :try_start_0
    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v1}, Lorg/xutils/db/sqlite/SqlInfo;->buildStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 518
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 520
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return p1

    :catchall_1
    move-exception p1

    .line 514
    :try_start_2
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, p1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_1

    .line 518
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    .line 520
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 523
    :cond_1
    :goto_1
    throw p1
.end method

.method public findAll(Ljava/lang/Class;)Ljava/util/List;
    .locals 0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 362
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findById(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object p1

    .line 336
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 338
    :cond_0
    invoke-static {p1}, Lorg/xutils/db/Selector;->from(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v0, v2, v3, p2}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object p2

    const/4 v0, 0x1

    .line 339
    invoke-virtual {p2, v0}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    move-result-object p2

    invoke-virtual {p2}, Lorg/xutils/db/Selector;->toString()Ljava/lang/String;

    move-result-object p2

    .line 340
    invoke-virtual {p0, p2}, Lorg/xutils/db/DbManagerImpl;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 343
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    invoke-static {p1, p2}, Lorg/xutils/db/CursorUtils;->getEntity(Lorg/xutils/db/table/TableEntity;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    invoke-static {p2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    return-object p1

    :cond_1
    invoke-static {p2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 347
    :try_start_1
    new-instance v0, Lorg/xutils/ex/DbException;

    invoke-direct {v0, p1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 349
    invoke-static {p2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 350
    throw p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public findDbModelAll(Lorg/xutils/db/sqlite/SqlInfo;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/sqlite/SqlInfo;",
            ")",
            "Ljava/util/List<",
            "Lorg/xutils/db/table/DbModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execQuery(Lorg/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 394
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    invoke-static {p1}, Lorg/xutils/db/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 400
    :cond_0
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 398
    :try_start_1
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 400
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 401
    throw v0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public findDbModelFirst(Lorg/xutils/db/sqlite/SqlInfo;)Lorg/xutils/db/table/DbModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 372
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execQuery(Lorg/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 375
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-static {p1}, Lorg/xutils/db/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 379
    :try_start_1
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 381
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 382
    throw v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findFirst(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 357
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDaoConfig()Lorg/xutils/DbManager$DaoConfig;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->daoConfig:Lorg/xutils/DbManager$DaoConfig;

    return-object v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public replace(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 151
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 153
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 154
    check-cast p1, Ljava/util/List;

    .line 155
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 156
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 159
    invoke-static {v0, v1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 164
    invoke-static {v0, p1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 167
    :cond_2
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 170
    throw p1
.end method

.method public save(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 176
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 178
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 179
    check-cast p1, Ljava/util/List;

    .line 180
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 181
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 183
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 184
    invoke-static {v0, v1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 189
    invoke-static {v0, p1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 192
    :cond_2
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 195
    throw p1
.end method

.method public saveBindingId(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 202
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 204
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 205
    check-cast p1, Ljava/util/List;

    .line 206
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    return v1

    .line 207
    :cond_0
    :try_start_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 209
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 210
    invoke-direct {p0, v0, v2}, Lorg/xutils/db/DbManagerImpl;->saveBindingIdWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 211
    :cond_1
    new-instance p1, Lorg/xutils/ex/DbException;

    const-string v0, "saveBindingId error, transaction will not commit!"

    invoke-direct {p1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 215
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 217
    invoke-direct {p0, v0, p1}, Lorg/xutils/db/DbManagerImpl;->saveBindingIdWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Z

    move-result v1

    .line 220
    :cond_3
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    return v1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 223
    throw p1
.end method

.method public saveOrUpdate(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 126
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 128
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 129
    check-cast p1, Ljava/util/List;

    .line 130
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 131
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 133
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 134
    invoke-direct {p0, v0, v1}, Lorg/xutils/db/DbManagerImpl;->saveOrUpdateWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 139
    invoke-direct {p0, v0, p1}, Lorg/xutils/db/DbManagerImpl;->saveOrUpdateWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)V

    .line 142
    :cond_2
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 145
    throw p1
.end method

.method public selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 367
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/xutils/db/Selector;->from(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/Selector;

    move-result-object p1

    return-object p1
.end method

.method public varargs update(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;[Lorg/xutils/common/util/KeyValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            "[",
            "Lorg/xutils/common/util/KeyValue;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 316
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object p1

    .line 317
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 321
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 323
    invoke-static {p1, p2, p3}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Lorg/xutils/db/sqlite/WhereBuilder;[Lorg/xutils/common/util/KeyValue;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->executeUpdateDelete(Lorg/xutils/db/sqlite/SqlInfo;)I

    move-result p1

    .line 325
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 328
    throw p1
.end method

.method public varargs update(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 292
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 294
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 295
    check-cast p1, Ljava/util/List;

    .line 296
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 310
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 297
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 310
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    return-void

    .line 299
    :cond_1
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 300
    invoke-static {v0, v1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;[Ljava/lang/String;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    goto :goto_0

    .line 303
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    .line 310
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    return-void

    .line 305
    :cond_3
    :try_start_3
    invoke-static {v0, p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;[Ljava/lang/String;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 308
    :cond_4
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 310
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 311
    throw p1
.end method
