.class public Lcom/powervision/base/db/DbOpenHelper;
.super Lcom/powervision/base/db/model/DaoMaster$DevOpenHelper;
.source "DbOpenHelper.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/powervision/base/db/model/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/powervision/base/db/DbOpenHelper;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/base/db/DbOpenHelper;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/powervision/base/db/DbOpenHelper;->saveTimeData()V

    return-void
.end method

.method private deleteDb()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/powervision/base/db/DbOpenHelper;->context:Landroid/content/Context;

    const-string v1, "powerdata.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/powervision/base/db/DbOpenHelper;->initSql()V

    :cond_0
    return-void
.end method

.method private initSql()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/powervision/base/db/DbOpenHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/powervision/base/db/DBManager;->copySql2App(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/base/db/DbOpenHelper$1;

    invoke-direct {v1, p0}, Lcom/powervision/base/db/DbOpenHelper$1;-><init>(Lcom/powervision/base/db/DbOpenHelper;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private saveTimeData()V
    .locals 2

    .line 90
    invoke-static {}, Lcom/powervision/base/db/DBManager;->getInstance()Lcom/powervision/base/db/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/db/DBManager;->queryUpdateTime()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {}, Lcom/powervision/base/db/api/UpdateDbManager;->getInstance()Lcom/powervision/base/db/api/UpdateDbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/db/api/UpdateDbManager;->getDbApi()Lcom/powervision/base/db/api/DBApi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/powervision/base/db/api/DBApi;->updateDb(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/net/observable/StringObservable;->getObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 96
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/base/db/DbOpenHelper$2;

    invoke-direct {v1, p0}, Lcom/powervision/base/db/DbOpenHelper$2;-><init>(Lcom/powervision/base/db/DbOpenHelper;)V

    .line 97
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V
    .locals 2

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/base/db/model/DaoMaster$DevOpenHelper;->onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oldVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "newVersion = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/powervision/base/db/DbOpenHelper;->deleteDb()V

    .line 39
    invoke-static {}, Lcom/powervision/base/db/MigrationHelper;->getInstance()Lcom/powervision/base/db/MigrationHelper;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Lcom/powervision/base/db/model/GeoDataDao;

    aput-object v1, p3, v0

    invoke-virtual {p2, p1, p3}, Lcom/powervision/base/db/MigrationHelper;->migrate(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    return-void
.end method
