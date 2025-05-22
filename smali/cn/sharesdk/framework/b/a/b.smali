.class public Lcn/sharesdk/framework/b/a/b;
.super Ljava/lang/Object;
.source "DBProvider.java"


# static fields
.field private static b:Lcn/sharesdk/framework/b/a/b;


# instance fields
.field private a:Lcn/sharesdk/framework/b/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcn/sharesdk/framework/b/a/a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/a/a;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/b/a/b;->a:Lcn/sharesdk/framework/b/a/a;

    return-void
.end method

.method public static declared-synchronized a()Lcn/sharesdk/framework/b/a/b;
    .locals 2

    const-class v0, Lcn/sharesdk/framework/b/a/b;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcn/sharesdk/framework/b/a/b;->b:Lcn/sharesdk/framework/b/a/b;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcn/sharesdk/framework/b/a/b;

    invoke-direct {v1}, Lcn/sharesdk/framework/b/a/b;-><init>()V

    sput-object v1, Lcn/sharesdk/framework/b/a/b;->b:Lcn/sharesdk/framework/b/a/b;

    .line 24
    :cond_0
    sget-object v1, Lcn/sharesdk/framework/b/a/b;->b:Lcn/sharesdk/framework/b/a/b;
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
    .locals 5

    .line 143
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/b;->a:Lcn/sharesdk/framework/b/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 145
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select count(*) from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 146
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 150
    :try_start_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v2

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .line 98
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/b;->a:Lcn/sharesdk/framework/b/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    :try_start_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

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

    .line 104
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

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

    .line 55
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/b;->a:Lcn/sharesdk/framework/b/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 58
    :try_start_0
    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 60
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

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

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    move-object v9, p0

    .line 37
    iget-object v0, v9, Lcn/sharesdk/framework/b/a/b;->a:Lcn/sharesdk/framework/b/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 38
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v2, v11

    const-string v3, "Query table: %s"

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    .line 41
    :try_start_0
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 43
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v2, v10, [Ljava/lang/Object;

    aput-object p1, v2, v11

    const-string v3, "when query database occur error table:%s,"

    invoke-virtual {v0, v1, v3, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
