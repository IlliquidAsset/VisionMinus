.class public Lcom/umeng/analytics/pro/aa;
.super Ljava/lang/Object;
.source "CCDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/aa$a;
    }
.end annotation


# static fields
.field private static b:Landroid/database/sqlite/SQLiteOpenHelper;

.field private static d:Landroid/content/Context;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/aa;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/aa$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/umeng/analytics/pro/aa;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/aa;
    .locals 1

    .line 37
    sget-object v0, Lcom/umeng/analytics/pro/aa;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/aa;->d:Landroid/content/Context;

    .line 40
    invoke-static {p0}, Lcom/umeng/analytics/pro/z;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/z;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/aa;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 43
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/aa$a;->a()Lcom/umeng/analytics/pro/aa;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/aa;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 48
    sget-object v0, Lcom/umeng/analytics/pro/aa;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "jessie"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 65
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "__ts"

    .line 66
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "__c"

    .line 67
    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "__a"

    .line 68
    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v2, [Ljava/lang/Object;

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DbManager] insert timeStamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " content: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " active: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v0, v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "__cc"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 71
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 77
    :catchall_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    :catchall_1
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->b()V

    goto :goto_1

    :catch_0
    :try_start_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "[DbManager] insert failed"

    aput-object p2, p1, v1

    .line 73
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 77
    :try_start_3
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    .line 77
    :try_start_4
    iget-object p2, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p2, :cond_1

    .line 78
    iget-object p2, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 81
    :catchall_3
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->b()V

    throw p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 169
    iget-object v2, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update  __cc set __a=\"1\" where __ts=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "jessie"

    new-array v3, v1, [Ljava/lang/Object;

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DbManager] updateCloudConfigByTimestamp\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v2, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :try_start_1
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 182
    :catchall_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    :catchall_1
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->b()V

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 177
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 182
    :try_start_3
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_1

    .line 183
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 186
    :catchall_2
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->b()V

    :goto_1
    return v0

    :catchall_3
    move-exception p1

    .line 182
    :try_start_4
    iget-object v0, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 186
    :catchall_4
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->b()V

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/aa;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :catchall_0
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 11

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 200
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 201
    iget-object v3, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v3, "select *  from __cc where __a=\"1\" group by __ts"

    .line 203
    iget-object v4, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 205
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "__ts"

    .line 206
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "__c"

    .line 207
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "__a"

    .line 208
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    .line 209
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "timeStamp = %s, content = %s, active = %s, id = %s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v1

    aput-object v5, v9, v2

    const/4 v10, 0x2

    aput-object v6, v9, v10

    const/4 v10, 0x3

    aput-object v7, v9, v10

    .line 210
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    new-instance v7, Lcom/umeng/analytics/pro/af;

    invoke-direct {v7}, Lcom/umeng/analytics/pro/af;-><init>()V

    .line 213
    invoke-virtual {v7, v4}, Lcom/umeng/analytics/pro/af;->a(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v7, v5}, Lcom/umeng/analytics/pro/af;->b(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v7, v6}, Lcom/umeng/analytics/pro/af;->c(Ljava/lang/String;)V

    .line 216
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 217
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "update  __cc set __a=\"0\" where "

    .line 226
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, ""

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    .line 229
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/umeng/analytics/pro/af;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v7, v3, -0x1

    const-string v8, "\""

    const-string v9, "__ts=\""

    if-eq v5, v7, :cond_2

    .line 231
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/umeng/analytics/pro/af;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " or "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 233
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/umeng/analytics/pro/af;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 235
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "jessie"

    new-array v8, v2, [Ljava/lang/Object;

    .line 236
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DbManager] updateOtherCloudConfigInfo : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v7, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 238
    iget-object v6, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 247
    :cond_3
    :try_start_2
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_4

    .line 248
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_3

    .line 247
    :catchall_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_4

    .line 248
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 251
    :catchall_1
    :cond_4
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->b()V

    const/4 v1, 0x1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 242
    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 247
    :try_start_4
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_5

    .line 248
    iget-object p1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 251
    :catchall_2
    :cond_5
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->b()V

    :goto_4
    return v1

    :catchall_3
    move-exception p1

    .line 247
    :try_start_5
    iget-object v0, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_6

    .line 248
    iget-object v0, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 251
    :catchall_4
    :cond_6
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->b()V

    throw p1
.end method

.method public c()Ljava/lang/String;
    .locals 9

    const-string v0, ""

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 89
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "select *  from __cc"

    .line 91
    iget-object v2, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "__ts"

    .line 94
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__c"

    .line 95
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__a"

    .line 96
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "timeStamp = %s, content = %s, active = %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v3, v7, v2

    const/4 v2, 0x2

    aput-object v4, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    .line 108
    :catchall_0
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 104
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 108
    :try_start_3
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    :catchall_1
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->b()V

    return-object v0

    :catchall_2
    move-exception v0

    .line 108
    :try_start_4
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 112
    :catchall_3
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->b()V

    throw v0
.end method

.method public d()Lcom/umeng/analytics/pro/af;
    .locals 11

    .line 122
    new-instance v0, Lcom/umeng/analytics/pro/af;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/af;-><init>()V

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 125
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "select *  from __cc where __a=\"1\" group by __ts"

    .line 127
    iget-object v2, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 129
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "__ts"

    .line 130
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__c"

    .line 131
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__a"

    .line 132
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    .line 133
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeStamp = %s, content = %s, active = %s, id = %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v9, 0x1

    aput-object v3, v7, v9

    const/4 v10, 0x2

    aput-object v4, v7, v10

    const/4 v10, 0x3

    aput-object v1, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "jessie"

    new-array v6, v9, [Ljava/lang/Object;

    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DbManager] selectRecentActiveOne"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v8

    invoke-static {v5, v6}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    new-instance v1, Lcom/umeng/analytics/pro/af;

    invoke-direct {v1}, Lcom/umeng/analytics/pro/af;-><init>()V

    .line 138
    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/af;->a(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, v3}, Lcom/umeng/analytics/pro/af;->b(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1, v4}, Lcom/umeng/analytics/pro/af;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :catchall_0
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->b()V

    return-object v1

    .line 144
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 150
    :try_start_3
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 150
    :catchall_1
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 146
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 150
    :try_start_5
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 154
    :catchall_2
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->b()V

    return-object v0

    :catchall_3
    move-exception v0

    .line 150
    :try_start_6
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_3

    .line 151
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 154
    :catchall_4
    :cond_3
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->b()V

    throw v0
.end method

.method public e()Z
    .locals 9

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 265
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 266
    iget-object v2, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "select *  from __cc where __a=\"0\" order by __ts asc"

    .line 268
    iget-object v3, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 270
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "__ts"

    .line 271
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "delete from __cc where "

    .line 278
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    const-string v4, ""
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v3, :cond_3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    add-int/lit8 v6, v3, -0x1

    const-string v7, "\""

    const-string v8, "__ts=\""

    if-eq v5, v6, :cond_1

    .line 284
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " or "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 286
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 289
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "jessie"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DbManager] deleteExtraCloudConfigInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    iget-object v2, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    .line 300
    iget-object v0, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_3

    .line 299
    :catchall_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    .line 300
    iget-object v0, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 295
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 299
    :try_start_4
    iget-object v0, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    .line 300
    iget-object v0, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 303
    :catchall_1
    :cond_4
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->b()V

    return v1

    :catchall_2
    move-exception v0

    .line 299
    :try_start_5
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_5

    .line 300
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 303
    :catchall_3
    :cond_5
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->b()V

    throw v0
.end method

.method public f()Lcom/umeng/analytics/pro/af;
    .locals 12

    .line 313
    new-instance v0, Lcom/umeng/analytics/pro/af;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/af;-><init>()V

    .line 315
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 316
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "select *  from __cc order by __ts desc"

    .line 318
    iget-object v2, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 320
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "__ts"

    .line 321
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__c"

    .line 322
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__a"

    .line 323
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    .line 324
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 325
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeStamp = %s, content = %s, active = %s, id = %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v10, 0x1

    aput-object v3, v8, v10

    const/4 v11, 0x2

    aput-object v4, v8, v11

    const/4 v11, 0x3

    aput-object v5, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "jessie"

    new-array v7, v10, [Ljava/lang/Object;

    .line 327
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DbManager] getLastestConfigInfo"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v9

    invoke-static {v6, v7}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    invoke-virtual {v0, v2}, Lcom/umeng/analytics/pro/af;->a(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, v3}, Lcom/umeng/analytics/pro/af;->b(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, v4}, Lcom/umeng/analytics/pro/af;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 343
    :try_start_1
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    :catchall_0
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->b()V

    return-object v0

    .line 337
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 343
    :try_start_3
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_3

    .line 344
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 343
    :catchall_1
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_3

    .line 344
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 339
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 343
    :try_start_5
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_3

    .line 344
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 347
    :catchall_2
    :cond_3
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->b()V

    return-object v0

    :catchall_3
    move-exception v0

    .line 343
    :try_start_6
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_4

    .line 344
    iget-object v1, p0, Lcom/umeng/analytics/pro/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 347
    :catchall_4
    :cond_4
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aa;->b()V

    throw v0
.end method
