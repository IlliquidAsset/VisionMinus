.class public Lcom/powervision/gcs/utils/ship/VideoHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "VideoHelper.java"


# static fields
.field private static helper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "gcs.interest"

    const/4 v1, 0x0

    const/16 v2, 0x58

    .line 32
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/powervision/gcs/utils/ship/VideoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 2

    const-class v0, Lcom/powervision/gcs/utils/ship/VideoHelper;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/powervision/gcs/utils/ship/VideoHelper;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/powervision/gcs/utils/ship/VideoHelper;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/utils/ship/VideoHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/powervision/gcs/utils/ship/VideoHelper;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 27
    :cond_0
    sget-object p0, Lcom/powervision/gcs/utils/ship/VideoHelper;->helper:Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE  interest (_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, type integer, interest_desc text, interest_address text, imgfile text, interest_latlng text UNIQUE);"

    .line 46
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
