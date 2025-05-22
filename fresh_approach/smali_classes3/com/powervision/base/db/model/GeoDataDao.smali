.class public Lcom/powervision/base/db/model/GeoDataDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "GeoDataDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/db/model/GeoDataDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/powervision/base/db/model/GeoData;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "noflydb"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/powervision/base/db/model/DaoSession;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/powervision/base/db/model/GeoData;)V
    .locals 4

    .line 175
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 177
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 179
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 182
    :cond_0
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getLayer_type()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 184
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 187
    :cond_1
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getCity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 189
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 192
    :cond_2
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getUpdate_time()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 194
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 197
    :cond_3
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getYmax()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 199
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 202
    :cond_4
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getXmin()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 204
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 207
    :cond_5
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getYmin()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 209
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 212
    :cond_6
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getXmax()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 214
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 217
    :cond_7
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getPoint()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 219
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 222
    :cond_8
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getGeometry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 224
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 227
    :cond_9
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 229
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 232
    :cond_a
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 234
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 237
    :cond_b
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getHeight()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 239
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 242
    :cond_c
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 244
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 247
    :cond_d
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getRadius()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 249
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 252
    :cond_e
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const/16 v1, 0x10

    .line 254
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 257
    :cond_f
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getNofly_level()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_10

    const/16 v1, 0x11

    .line 259
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 262
    :cond_10
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const/16 v1, 0x12

    .line 264
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 267
    :cond_11
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getOperating()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const/16 v1, 0x13

    .line 269
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 272
    :cond_12
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getReserved1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const/16 v1, 0x14

    .line 274
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 277
    :cond_13
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getReserved2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const/16 v1, 0x15

    .line 279
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 282
    :cond_14
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getReserved3()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_15

    const/16 v0, 0x16

    .line 284
    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_15
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/powervision/base/db/model/GeoData;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/base/db/model/GeoDataDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/powervision/base/db/model/GeoData;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/powervision/base/db/model/GeoData;)V
    .locals 4

    .line 60
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 62
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 67
    :cond_0
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getLayer_type()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 69
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 72
    :cond_1
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getCity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 74
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 77
    :cond_2
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getUpdate_time()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 79
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 82
    :cond_3
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getYmax()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 84
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 87
    :cond_4
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getXmin()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 89
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 92
    :cond_5
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getYmin()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 94
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 97
    :cond_6
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getXmax()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 99
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 102
    :cond_7
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getPoint()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 104
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 107
    :cond_8
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getGeometry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 109
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 112
    :cond_9
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 114
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 117
    :cond_a
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 119
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 122
    :cond_b
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getHeight()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 124
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 127
    :cond_c
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 129
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 132
    :cond_d
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getRadius()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 134
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 137
    :cond_e
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const/16 v1, 0x10

    .line 139
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 142
    :cond_f
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getNofly_level()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_10

    const/16 v1, 0x11

    .line 144
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 147
    :cond_10
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const/16 v1, 0x12

    .line 149
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 152
    :cond_11
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getOperating()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const/16 v1, 0x13

    .line 154
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 157
    :cond_12
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getReserved1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const/16 v1, 0x14

    .line 159
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 162
    :cond_13
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getReserved2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const/16 v1, 0x15

    .line 164
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 167
    :cond_14
    invoke-virtual {p2}, Lcom/powervision/base/db/model/GeoData;->getReserved3()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_15

    const/16 v0, 0x16

    .line 169
    invoke-interface {p1, v0, p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_15
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/powervision/base/db/model/GeoData;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/base/db/model/GeoDataDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/powervision/base/db/model/GeoData;)V

    return-void
.end method

.method public getKey(Lcom/powervision/base/db/model/GeoData;)Ljava/lang/Long;
    .locals 0

    if-eqz p1, :cond_0

    .line 357
    invoke-virtual {p1}, Lcom/powervision/base/db/model/GeoData;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/powervision/base/db/model/GeoData;

    invoke-virtual {p0, p1}, Lcom/powervision/base/db/model/GeoDataDao;->getKey(Lcom/powervision/base/db/model/GeoData;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/powervision/base/db/model/GeoData;)Z
    .locals 0

    .line 365
    invoke-virtual {p1}, Lcom/powervision/base/db/model/GeoData;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    check-cast p1, Lcom/powervision/base/db/model/GeoData;

    invoke-virtual {p0, p1}, Lcom/powervision/base/db/model/GeoDataDao;->hasKey(Lcom/powervision/base/db/model/GeoData;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/powervision/base/db/model/GeoData;
    .locals 26

    move-object/from16 v0, p1

    .line 295
    new-instance v23, Lcom/powervision/base/db/model/GeoData;

    add-int/lit8 v1, p2, 0x0

    .line 296
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    add-int/lit8 v2, p2, 0x1

    .line 297
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    add-int/lit8 v4, p2, 0x2

    .line 298
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    add-int/lit8 v5, p2, 0x3

    .line 299
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    add-int/lit8 v6, p2, 0x4

    .line 300
    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    :goto_4
    add-int/lit8 v7, p2, 0x5

    .line 301
    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    :goto_5
    add-int/lit8 v8, p2, 0x6

    .line 302
    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    :goto_6
    add-int/lit8 v9, p2, 0x7

    .line 303
    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    :goto_7
    add-int/lit8 v10, p2, 0x8

    .line 304
    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_8
    add-int/lit8 v11, p2, 0x9

    .line 305
    invoke-interface {v0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_9
    add-int/lit8 v12, p2, 0xa

    .line 306
    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_a
    add-int/lit8 v13, p2, 0xb

    .line 307
    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_b
    add-int/lit8 v14, p2, 0xc

    .line 308
    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    :goto_c
    add-int/lit8 v15, p2, 0xd

    .line 309
    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_d
    add-int/lit8 v3, p2, 0xe

    .line 310
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    const/16 v17, 0x0

    goto :goto_e

    :cond_e
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v17, v3

    :goto_e
    add-int/lit8 v3, p2, 0xf

    .line 311
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_f

    const/16 v18, 0x0

    goto :goto_f

    :cond_f
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    :goto_f
    add-int/lit8 v3, p2, 0x10

    .line 312
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_10

    const/16 v19, 0x0

    goto :goto_10

    :cond_10
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v19, v3

    :goto_10
    add-int/lit8 v3, p2, 0x11

    .line 313
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_11

    const/16 v20, 0x0

    goto :goto_11

    :cond_11
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    :goto_11
    add-int/lit8 v3, p2, 0x12

    .line 314
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_12

    const/16 v21, 0x0

    goto :goto_12

    :cond_12
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    :goto_12
    add-int/lit8 v3, p2, 0x13

    .line 315
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_13

    const/16 v22, 0x0

    goto :goto_13

    :cond_13
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v3

    :goto_13
    add-int/lit8 v3, p2, 0x14

    .line 316
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_14

    const/16 v24, 0x0

    goto :goto_14

    :cond_14
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    :goto_14
    add-int/lit8 v3, p2, 0x15

    .line 317
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_15

    const/16 v25, 0x0

    goto :goto_15

    :cond_15
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    :goto_15
    move-object/from16 v0, v23

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v24

    move-object/from16 v22, v25

    invoke-direct/range {v0 .. v22}, Lcom/powervision/base/db/model/GeoData;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/powervision/base/db/model/GeoDataDao;->readEntity(Landroid/database/Cursor;I)Lcom/powervision/base/db/model/GeoData;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/powervision/base/db/model/GeoData;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    .line 324
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 325
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setLayer_type(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 326
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setCity(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 327
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setUpdate_time(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 328
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setYmax(Ljava/lang/Double;)V

    add-int/lit8 v0, p3, 0x5

    .line 329
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v2

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_5
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setXmin(Ljava/lang/Double;)V

    add-int/lit8 v0, p3, 0x6

    .line 330
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, v2

    goto :goto_6

    :cond_6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_6
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setYmin(Ljava/lang/Double;)V

    add-int/lit8 v0, p3, 0x7

    .line 331
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v0, v2

    goto :goto_7

    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_7
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setXmax(Ljava/lang/Double;)V

    add-int/lit8 v0, p3, 0x8

    .line 332
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v0, v2

    goto :goto_8

    :cond_8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setPoint(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x9

    .line 333
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v0, v2

    goto :goto_9

    :cond_9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setGeometry(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xa

    .line 334
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v0, v2

    goto :goto_a

    :cond_a
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setCountry(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xb

    .line 335
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object v0, v2

    goto :goto_b

    :cond_b
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setDescription(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xc

    .line 336
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v0, v2

    goto :goto_c

    :cond_c
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_c
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setHeight(Ljava/lang/Double;)V

    add-int/lit8 v0, p3, 0xd

    .line 337
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v0, v2

    goto :goto_d

    :cond_d
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setColor(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xe

    .line 338
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object v0, v2

    goto :goto_e

    :cond_e
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_e
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setRadius(Ljava/lang/Double;)V

    add-int/lit8 v0, p3, 0xf

    .line 339
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object v0, v2

    goto :goto_f

    :cond_f
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x10

    .line 340
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v0, v2

    goto :goto_10

    :cond_10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_10
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setNofly_level(Ljava/lang/Integer;)V

    add-int/lit8 v0, p3, 0x11

    .line 341
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object v0, v2

    goto :goto_11

    :cond_11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x12

    .line 342
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_12

    move-object v0, v2

    goto :goto_12

    :cond_12
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setOperating(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x13

    .line 343
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_13

    move-object v0, v2

    goto :goto_13

    :cond_13
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_13
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setReserved1(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x14

    .line 344
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_14

    move-object v0, v2

    goto :goto_14

    :cond_14
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_14
    invoke-virtual {p2, v0}, Lcom/powervision/base/db/model/GeoData;->setReserved2(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x15

    .line 345
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_15

    :cond_15
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_15
    invoke-virtual {p2, v2}, Lcom/powervision/base/db/model/GeoData;->setReserved3(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 16
    check-cast p2, Lcom/powervision/base/db/model/GeoData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/powervision/base/db/model/GeoDataDao;->readEntity(Landroid/database/Cursor;Lcom/powervision/base/db/model/GeoData;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 1

    add-int/lit8 p2, p2, 0x0

    .line 290
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/powervision/base/db/model/GeoDataDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/powervision/base/db/model/GeoData;J)Ljava/lang/Long;
    .locals 1

    .line 350
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powervision/base/db/model/GeoData;->setId(Ljava/lang/Long;)V

    .line 351
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/powervision/base/db/model/GeoData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/powervision/base/db/model/GeoDataDao;->updateKeyAfterInsert(Lcom/powervision/base/db/model/GeoData;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
