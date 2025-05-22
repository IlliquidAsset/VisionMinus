.class public Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;
.super Ljava/lang/Object;
.source "AssetsDatabaseManager.java"


# static fields
.field private static databasepath:Ljava/lang/String; = "/data/data/com.powervision.gcs/databases"

.field private static mInstance:Lcom/powervision/gcs/utils/io/AssetsDatabaseManager; = null

.field private static tag:Ljava/lang/String; = "AssetsDatabase"


# instance fields
.field private context:Landroid/content/Context;

.field private databases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->databases:Ljava/util/Map;

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->context:Landroid/content/Context;

    .line 76
    iput-object p1, p0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->context:Landroid/content/Context;

    return-void
.end method

.method public static closeAllDatabase()V
    .locals 3

    .line 179
    sget-object v0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->tag:Ljava/lang/String;

    const-string v1, "closeAllDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-object v0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->mInstance:Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 181
    :goto_0
    sget-object v1, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->mInstance:Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;

    iget-object v1, v1, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->databases:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 182
    sget-object v1, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->mInstance:Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;

    iget-object v1, v1, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->databases:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    sget-object v1, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->mInstance:Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;

    iget-object v1, v1, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->databases:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_1
    sget-object v0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->mInstance:Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;

    iget-object v0, v0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->databases:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    return-void
.end method

.method private copyAssetsToFilesystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 130
    sget-object v0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Copy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 135
    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 136
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 p2, 0x400

    :try_start_2
    new-array p2, p2, [B

    .line 139
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 140
    invoke-virtual {v2, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 143
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v2, v1

    :goto_1
    move-object v1, p1

    goto :goto_2

    :catch_2
    move-exception p2

    move-object v2, v1

    .line 145
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v1, :cond_1

    .line 148
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_3
    if-eqz v2, :cond_2

    .line 150
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    .line 152
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_5
    return v0
.end method

.method private getDatabaseFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->getDatabaseFilepath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDatabaseFilepath()Ljava/lang/String;
    .locals 5

    .line 122
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v1, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->databasepath:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getManager()Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;
    .locals 1

    .line 72
    sget-object v0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->mInstance:Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;

    return-object v0
.end method

.method public static initManager(Landroid/content/Context;)V
    .locals 1

    .line 61
    sget-object v0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->mInstance:Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->mInstance:Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public closeDatabase(Ljava/lang/String;)Z
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->databases:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->databases:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 168
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 169
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->databases:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 8

    .line 86
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->databases:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->tag:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v2, "Return a database copy of %s"

    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->databases:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    return-object p1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->context:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    return-object v3

    .line 93
    :cond_1
    sget-object v0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->tag:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v2

    const-string v6, "Create database %s"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-direct {p0}, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->getDatabaseFilepath()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-direct {p0, p1}, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->getDatabaseFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object v6, p0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->context:Landroid/content/Context;

    const-class v7, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 99
    invoke-interface {v6, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 100
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 101
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_3

    .line 103
    sget-object p1, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" fail!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 106
    :cond_3
    invoke-direct {p0, p1, v4}, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->copyAssetsToFilesystem(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 107
    sget-object v0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->tag:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object v4, v6, v1

    const-string p1, "Copy %s to %s fail!"

    invoke-static {v5, p1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 111
    :cond_4
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    const/16 v0, 0x10

    .line 114
    invoke-static {v4, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 116
    iget-object v1, p0, Lcom/powervision/gcs/utils/io/AssetsDatabaseManager;->databases:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method
