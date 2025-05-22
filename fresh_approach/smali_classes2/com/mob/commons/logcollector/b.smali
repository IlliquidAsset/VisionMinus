.class public Lcom/mob/commons/logcollector/b;
.super Ljava/lang/Object;
.source "DBProvider.java"


# static fields
.field private static b:Lcom/mob/commons/logcollector/b;


# instance fields
.field private a:Lcom/mob/commons/logcollector/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/mob/commons/logcollector/a;

    invoke-direct {v0}, Lcom/mob/commons/logcollector/a;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/logcollector/b;->a:Lcom/mob/commons/logcollector/a;

    return-void
.end method

.method public static declared-synchronized a()Lcom/mob/commons/logcollector/b;
    .locals 2

    const-class v0, Lcom/mob/commons/logcollector/b;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/mob/commons/logcollector/b;->b:Lcom/mob/commons/logcollector/b;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/mob/commons/logcollector/b;

    invoke-direct {v1}, Lcom/mob/commons/logcollector/b;-><init>()V

    sput-object v1, Lcom/mob/commons/logcollector/b;->b:Lcom/mob/commons/logcollector/b;

    .line 23
    :cond_0
    sget-object v1, Lcom/mob/commons/logcollector/b;->b:Lcom/mob/commons/logcollector/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 9

    .line 140
    iget-object v0, p0, Lcom/mob/commons/logcollector/b;->a:Lcom/mob/commons/logcollector/a;

    invoke-virtual {v0}, Lcom/mob/commons/logcollector/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    move-object v2, p1

    .line 142
    :try_start_0
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_1

    .line 149
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v1

    const/4 p1, 0x0

    .line 145
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_3
    return v0

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_2

    .line 149
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/mob/commons/logcollector/b;->a:Lcom/mob/commons/logcollector/a;

    invoke-virtual {v0}, Lcom/mob/commons/logcollector/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p3

    const-string v0, "Deleted %d rows from table: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object p1, v3, v1

    invoke-virtual {p3, v0, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    goto :goto_0

    :catch_1
    move-exception p3

    const/4 p2, 0x0

    .line 103
    :goto_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "when delete database occur error table:%s,"

    invoke-virtual {v0, p3, p1, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_1
    return p2
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/mob/commons/logcollector/b;->a:Lcom/mob/commons/logcollector/a;

    invoke-virtual {v0}, Lcom/mob/commons/logcollector/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    :try_start_0
    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 59
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "when insert database occur error table:%s,"

    invoke-virtual {v0, p2, p1, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    const-wide/16 p1, -0x1

    :goto_0
    return-wide p1
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/mob/commons/logcollector/b;->a:Lcom/mob/commons/logcollector/a;

    invoke-virtual {v0}, Lcom/mob/commons/logcollector/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 205
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 207
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
