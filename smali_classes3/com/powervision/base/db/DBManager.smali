.class public Lcom/powervision/base/db/DBManager;
.super Ljava/lang/Object;
.source "DBManager.java"


# static fields
.field private static DB_NAME:Ljava/lang/String; = "powerdata.db"

.field private static mInstance:Lcom/powervision/base/db/DBManager;


# instance fields
.field private mDaoMaster:Lcom/powervision/base/db/model/DaoMaster;

.field private mDaoSession:Lcom/powervision/base/db/model/DaoSession;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lcom/powervision/base/db/DBManager;->mInstance:Lcom/powervision/base/db/DBManager;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/powervision/base/db/DbOpenHelper;

    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    sget-object v2, Lcom/powervision/base/db/DBManager;->DB_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/powervision/base/db/DbOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    new-instance v1, Lcom/powervision/base/db/model/DaoMaster;

    invoke-virtual {v0}, Lcom/powervision/base/db/DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/powervision/base/db/model/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/powervision/base/db/DBManager;->mDaoMaster:Lcom/powervision/base/db/model/DaoMaster;

    .line 64
    invoke-virtual {v1}, Lcom/powervision/base/db/model/DaoMaster;->newSession()Lcom/powervision/base/db/model/DaoSession;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/db/DBManager;->mDaoSession:Lcom/powervision/base/db/model/DaoSession;

    :cond_0
    return-void
.end method

.method private static copyDataBase(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 218
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$raw;->powerdata:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "powerdata.db"

    .line 221
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "outFileName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 225
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 230
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p0, 0x400

    new-array p0, p0, [B

    .line 236
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 239
    :cond_1
    :goto_1
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_3

    .line 240
    invoke-virtual {v1, p0, v3, v6}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v4, v6

    mul-int/lit8 v6, v4, 0x64

    .line 242
    div-int/2addr v6, v2

    if-nez v6, :cond_2

    if-nez v5, :cond_2

    .line 244
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eq v5, v6, :cond_1

    .line 247
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    move v5, v6

    goto :goto_1

    .line 253
    :cond_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 254
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 255
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 256
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    const-string p0, "onComplete =  emitter.onComplete() = "

    .line 257
    invoke-static {p0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 259
    :cond_4
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 265
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 266
    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p0

    .line 262
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 263
    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static copySql2App(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Lcom/powervision/base/db/-$$Lambda$DBManager$4B0mcgz0bXsGgR5OcRfK1a0LlJY;

    invoke-direct {v0, p0}, Lcom/powervision/base/db/-$$Lambda$DBManager$4B0mcgz0bXsGgR5OcRfK1a0LlJY;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/powervision/base/db/DBManager;
    .locals 2

    .line 46
    sget-object v0, Lcom/powervision/base/db/DBManager;->mInstance:Lcom/powervision/base/db/DBManager;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lcom/powervision/base/db/DBManager;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/powervision/base/db/DBManager;->mInstance:Lcom/powervision/base/db/DBManager;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/powervision/base/db/DBManager;

    invoke-direct {v1}, Lcom/powervision/base/db/DBManager;-><init>()V

    sput-object v1, Lcom/powervision/base/db/DBManager;->mInstance:Lcom/powervision/base/db/DBManager;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/base/db/DBManager;->mInstance:Lcom/powervision/base/db/DBManager;

    return-object v0
.end method

.method static synthetic lambda$copySql2App$0(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    invoke-static {p0, p1}, Lcom/powervision/base/db/DBManager;->copyDataBase(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method


# virtual methods
.method public getMaster()Lcom/powervision/base/db/model/DaoMaster;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/powervision/base/db/DBManager;->mDaoMaster:Lcom/powervision/base/db/model/DaoMaster;

    return-object v0
.end method

.method public getNewSession()Lcom/powervision/base/db/model/DaoSession;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/powervision/base/db/DBManager;->mDaoMaster:Lcom/powervision/base/db/model/DaoMaster;

    invoke-virtual {v0}, Lcom/powervision/base/db/model/DaoMaster;->newSession()Lcom/powervision/base/db/model/DaoSession;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/db/DBManager;->mDaoSession:Lcom/powervision/base/db/model/DaoSession;

    return-object v0
.end method

.method public getSession()Lcom/powervision/base/db/model/DaoSession;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/powervision/base/db/DBManager;->mDaoSession:Lcom/powervision/base/db/model/DaoSession;

    return-object v0
.end method

.method public insertOrUpdate(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/db/model/GeoOnLineData;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/db/model/GeoOnLineData;

    .line 173
    new-instance v1, Lcom/powervision/base/db/model/GeoData;

    invoke-direct {v1}, Lcom/powervision/base/db/model/GeoData;-><init>()V

    .line 174
    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoOnLineData;->get_id()Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/powervision/base/db/model/GeoData;->id:Ljava/lang/Long;

    .line 175
    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoOnLineData;->getCity()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/powervision/base/db/model/GeoData;->city:Ljava/lang/String;

    .line 176
    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoOnLineData;->getUpdate_time()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/powervision/base/db/model/GeoData;->update_time:Ljava/lang/String;

    .line 177
    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoOnLineData;->getGeometry()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/powervision/base/db/model/GeoData;->geometry:Ljava/lang/String;

    .line 178
    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoOnLineData;->getColor()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/powervision/base/db/model/GeoData;->color:Ljava/lang/String;

    .line 179
    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoOnLineData;->getCountry()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/powervision/base/db/model/GeoData;->country:Ljava/lang/String;

    .line 180
    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoOnLineData;->getDescription()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/powervision/base/db/model/GeoData;->description:Ljava/lang/String;

    .line 181
    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoOnLineData;->getOperating()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/powervision/base/db/model/GeoData;->operating:Ljava/lang/String;

    .line 182
    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoOnLineData;->getHeight()Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lcom/powervision/base/db/model/GeoData;->height:Ljava/lang/Double;

    .line 183
    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoOnLineData;->getLayer_type()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/powervision/base/db/model/GeoData;->layer_type:Ljava/lang/String;

    .line 184
    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoOnLineData;->getNofly_level()Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/powervision/base/db/model/GeoData;->nofly_level:Ljava/lang/Integer;

    .line 185
    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoOnLineData;->getPoint()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/powervision/base/db/model/GeoData;->point:Ljava/lang/String;

    .line 186
    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoOnLineData;->getRadius()Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lcom/powervision/base/db/model/GeoData;->radius:Ljava/lang/Double;

    .line 187
    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoOnLineData;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/powervision/base/db/model/GeoData;->url:Ljava/lang/String;

    .line 188
    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoOnLineData;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/powervision/base/db/model/GeoData;->name:Ljava/lang/String;

    .line 189
    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoOnLineData;->getXmax()Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lcom/powervision/base/db/model/GeoData;->xmax:Ljava/lang/Double;

    .line 190
    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoOnLineData;->getXmin()Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lcom/powervision/base/db/model/GeoData;->xmin:Ljava/lang/Double;

    .line 191
    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoOnLineData;->getYmax()Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lcom/powervision/base/db/model/GeoData;->ymax:Ljava/lang/Double;

    .line 192
    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoOnLineData;->getYmin()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Lcom/powervision/base/db/model/GeoData;->ymin:Ljava/lang/Double;

    .line 193
    iget-object v0, p0, Lcom/powervision/base/db/DBManager;->mDaoSession:Lcom/powervision/base/db/model/DaoSession;

    invoke-virtual {v0}, Lcom/powervision/base/db/model/DaoSession;->getGeoDataDao()Lcom/powervision/base/db/model/GeoDataDao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/base/db/model/GeoDataDao;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertOrUpdate = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/powervision/base/db/model/GeoData;->update_time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "saveTimeData"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public queryAll()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/base/db/model/GeoData;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/powervision/base/db/DBManager;->mDaoSession:Lcom/powervision/base/db/model/DaoSession;

    invoke-virtual {v0}, Lcom/powervision/base/db/model/DaoSession;->getGeoDataDao()Lcom/powervision/base/db/model/GeoDataDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoDataDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Operating:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/Property;->isNull()Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    sget-object v2, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Operating:Lorg/greenrobot/greendao/Property;

    const-string v3, "del"

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->whereOr(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryByVersion(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/powervision/base/db/model/GeoData;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "PV_DATABASE_UPDATE_TIME"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=== lastTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/powervision/base/db/DBManager;->mDaoSession:Lcom/powervision/base/db/model/DaoSession;

    invoke-virtual {v1}, Lcom/powervision/base/db/model/DaoSession;->getGeoDataDao()Lcom/powervision/base/db/model/GeoDataDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/db/model/GeoDataDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 101
    sget-object v2, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Operating:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/Property;->isNull()Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    sget-object v3, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Operating:Lorg/greenrobot/greendao/Property;

    const-string v4, "del"

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->whereOr(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 102
    sget-object v2, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Update_time:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    sget-object v2, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Update_time:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v2, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v0, p1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->and(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v0, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 103
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryUpdateTime()Ljava/lang/String;
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/powervision/base/db/DBManager;->mDaoSession:Lcom/powervision/base/db/model/DaoSession;

    .line 127
    invoke-virtual {v0}, Lcom/powervision/base/db/model/DaoSession;->getGeoDataDao()Lcom/powervision/base/db/model/GeoDataDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/db/model/GeoDataDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Update_time:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 130
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/db/model/GeoData;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_1

    .line 153
    :cond_1
    iget-object v0, v0, Lcom/powervision/base/db/model/GeoData;->update_time:Ljava/lang/String;

    :goto_1
    return-object v0
.end method

.method public selectById(J)Lcom/powervision/base/db/model/GeoData;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/powervision/base/db/DBManager;->mDaoSession:Lcom/powervision/base/db/model/DaoSession;

    invoke-virtual {v0}, Lcom/powervision/base/db/model/DaoSession;->getGeoDataDao()Lcom/powervision/base/db/model/GeoDataDao;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, " where id = ?"

    invoke-virtual {v0, p1, v1}, Lcom/powervision/base/db/model/GeoDataDao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 163
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/db/model/GeoData;

    :goto_0
    return-object p1
.end method

.method public test(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/powervision/base/db/model/GeoData;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    const-string v0, "PV_DATABASE_UPDATE_TIME"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    iget-object p1, p0, Lcom/powervision/base/db/DBManager;->mDaoSession:Lcom/powervision/base/db/model/DaoSession;

    invoke-virtual {p1}, Lcom/powervision/base/db/model/DaoSession;->getGeoDataDao()Lcom/powervision/base/db/model/GeoDataDao;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/db/model/GeoDataDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 113
    sget-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Operating:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/Property;->isNull()Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    sget-object v1, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Operating:Lorg/greenrobot/greendao/Property;

    const-string v2, "del"

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p1, v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->whereOr(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 114
    sget-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Update_time:Lorg/greenrobot/greendao/Property;

    const-string v1, "2019-07-17 18:46:53"

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    sget-object v1, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Update_time:Lorg/greenrobot/greendao/Property;

    const-string v3, "2019-07-17 18:37:20"

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p1, v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->and(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v1, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p1, v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 115
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastTime  data.size() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-object p1
.end method
