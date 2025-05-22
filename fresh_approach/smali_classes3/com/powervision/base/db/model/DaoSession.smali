.class public Lcom/powervision/base/db/model/DaoSession;
.super Lorg/greenrobot/greendao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field private final geoDataDao:Lcom/powervision/base/db/model/GeoDataDao;

.field private final geoDataDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Lorg/greenrobot/greendao/identityscope/IdentityScopeType;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;",
            "Lorg/greenrobot/greendao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 32
    const-class p1, Lcom/powervision/base/db/model/GeoDataDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/db/model/DaoSession;->geoDataDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 33
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 35
    new-instance p1, Lcom/powervision/base/db/model/GeoDataDao;

    iget-object p2, p0, Lcom/powervision/base/db/model/DaoSession;->geoDataDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/powervision/base/db/model/GeoDataDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/powervision/base/db/model/DaoSession;)V

    iput-object p1, p0, Lcom/powervision/base/db/model/DaoSession;->geoDataDao:Lcom/powervision/base/db/model/GeoDataDao;

    .line 37
    const-class p2, Lcom/powervision/base/db/model/GeoData;

    invoke-virtual {p0, p2, p1}, Lcom/powervision/base/db/model/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/powervision/base/db/model/DaoSession;->geoDataDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    return-void
.end method

.method public getGeoDataDao()Lcom/powervision/base/db/model/GeoDataDao;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/powervision/base/db/model/DaoSession;->geoDataDao:Lcom/powervision/base/db/model/GeoDataDao;

    return-object v0
.end method
