.class public Lcom/mob/tools/utils/SQLiteHelper;
.super Ljava/lang/Object;
.source "SQLiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V
    .locals 0

    .line 85
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$400(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    return-void
.end method

.method public static delete(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 31
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    .line 32
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$200(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static execSQL(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    .line 49
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 51
    :try_start_0
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    .line 54
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 56
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public static getDatabase(Landroid/content/Context;Ljava/lang/String;)Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {p0, p1}, Lcom/mob/tools/utils/SQLiteHelper;->getDatabase(Ljava/lang/String;Ljava/lang/String;)Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object p0

    return-object p0
.end method

.method public static getDatabase(Ljava/lang/String;Ljava/lang/String;)Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .locals 2

    .line 21
    new-instance v0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mob/tools/utils/SQLiteHelper$1;)V

    return-object v0
.end method

.method public static getSize(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 67
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    const/4 v0, 0x0

    .line 71
    :try_start_0
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$200(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 72
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 77
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return p0

    :catchall_0
    move-exception p0

    .line 74
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_2

    .line 77
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0
.end method

.method public static insert(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Landroid/content/ContentValues;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 25
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    .line 26
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$200(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static query(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    .line 44
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$200(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static rawQuery(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 62
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    .line 63
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static update(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V

    .line 38
    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->access$200(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
