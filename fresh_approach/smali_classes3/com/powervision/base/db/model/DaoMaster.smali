.class public Lcom/powervision/base/db/model/DaoMaster;
.super Lorg/greenrobot/greendao/AbstractDaoMaster;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/db/model/DaoMaster$DevOpenHelper;,
        Lcom/powervision/base/db/model/DaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I = 0x2


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 41
    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, v0}, Lcom/powervision/base/db/model/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;)V
    .locals 1

    const/4 v0, 0x2

    .line 45
    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;I)V

    .line 46
    const-class p1, Lcom/powervision/base/db/model/GeoDataDao;

    invoke-virtual {p0, p1}, Lcom/powervision/base/db/model/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    return-void
.end method

.method public static createAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    return-void
.end method

.method public static dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    return-void
.end method

.method public static newDevSession(Landroid/content/Context;Ljava/lang/String;)Lcom/powervision/base/db/model/DaoSession;
    .locals 1

    .line 35
    new-instance v0, Lcom/powervision/base/db/model/DaoMaster$DevOpenHelper;

    invoke-direct {v0, p0, p1}, Lcom/powervision/base/db/model/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/powervision/base/db/model/DaoMaster$DevOpenHelper;->getWritableDb()Lorg/greenrobot/greendao/database/Database;

    move-result-object p0

    .line 36
    new-instance p1, Lcom/powervision/base/db/model/DaoMaster;

    invoke-direct {p1, p0}, Lcom/powervision/base/db/model/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 37
    invoke-virtual {p1}, Lcom/powervision/base/db/model/DaoMaster;->newSession()Lcom/powervision/base/db/model/DaoSession;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public newSession()Lcom/powervision/base/db/model/DaoSession;
    .locals 4

    .line 50
    new-instance v0, Lcom/powervision/base/db/model/DaoSession;

    iget-object v1, p0, Lcom/powervision/base/db/model/DaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    sget-object v2, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->Session:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/powervision/base/db/model/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/powervision/base/db/model/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/powervision/base/db/model/DaoSession;
    .locals 3

    .line 54
    new-instance v0, Lcom/powervision/base/db/model/DaoSession;

    iget-object v1, p0, Lcom/powervision/base/db/model/DaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    iget-object v2, p0, Lcom/powervision/base/db/model/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/powervision/base/db/model/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/powervision/base/db/model/DaoMaster;->newSession()Lcom/powervision/base/db/model/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/powervision/base/db/model/DaoMaster;->newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/powervision/base/db/model/DaoSession;

    move-result-object p1

    return-object p1
.end method
