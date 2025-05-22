.class public Lcom/powervision/aircraft/utils/MapUtil;
.super Ljava/lang/Object;
.source "MapUtil.java"


# static fields
.field public static final P_BAIDU_MAP:Ljava/lang/String; = "com.baidu.BaiduMap"

.field public static final P_GAODE_MAP:Ljava/lang/String; = "com.autonavi.minimap"

.field public static final P_GOOGLE_MAP:Ljava/lang/String; = "com.google.android.apps.maps"

.field public static final P_TENCENT_MAP:Ljava/lang/String; = "com.tencent.map"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bdToGaoDe(DD)[D
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [D

    const-wide v1, 0x3f7a9fbe76c8b439L    # 0.0065

    sub-double/2addr p2, v1

    const-wide v1, 0x3f789374bc6a7efaL    # 0.006

    sub-double/2addr p0, v1

    mul-double v1, p2, p2

    mul-double v3, p0, p0

    add-double/2addr v1, v3

    .line 72
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x404a2e1077c7044eL    # 52.35987755982988

    mul-double v5, p0, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    const-wide v7, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double v5, v5, v7

    sub-double/2addr v1, v5

    .line 73
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    mul-double p2, p2, v3

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide v3, 0x3ec92a737110e454L    # 3.0E-6

    mul-double p2, p2, v3

    sub-double/2addr p0, p2

    .line 74
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double p2, p2, v1

    const/4 v3, 0x0

    aput-wide p2, v0, v3

    .line 75
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double v1, v1, p0

    const/4 p0, 0x1

    aput-wide v1, v0, p0

    return-object v0
.end method

.method private static gaoDeToBaidu(DD)[D
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [D

    mul-double v1, p0, p0

    mul-double v3, p2, p2

    add-double/2addr v1, v3

    .line 90
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x404a2e1077c7044eL    # 52.35987755982988

    mul-double v5, p2, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    const-wide v7, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double v5, v5, v7

    add-double/2addr v1, v5

    .line 91
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p2

    mul-double p0, p0, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide v3, 0x3ec92a737110e454L    # 3.0E-6

    mul-double p0, p0, v3

    add-double/2addr p2, p0

    .line 92
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double p0, p0, v1

    const-wide v3, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double/2addr p0, v3

    const/4 v3, 0x0

    aput-wide p0, v0, v3

    .line 93
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double v1, v1, p0

    const-wide p0, 0x3f789374bc6a7efaL    # 0.006

    add-double/2addr v1, p0

    const/4 p0, 0x1

    aput-wide v1, v0, p0

    return-object v0
.end method

.method public static isBaiduMapInstalled()Z
    .locals 1

    const-string v0, "com.baidu.BaiduMap"

    .line 29
    invoke-static {v0}, Lcom/powervision/aircraft/utils/MapUtil;->isInstallPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGdMapInstalled()Z
    .locals 1

    const-string v0, "com.autonavi.minimap"

    .line 25
    invoke-static {v0}, Lcom/powervision/aircraft/utils/MapUtil;->isInstallPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGoogleMapInstalled()Z
    .locals 1

    const-string v0, "com.google.android.apps.maps"

    .line 37
    invoke-static {v0}, Lcom/powervision/aircraft/utils/MapUtil;->isInstallPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInstallApk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    .line 49
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 50
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 51
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static isInstallPackage(Ljava/lang/String;)Z
    .locals 3

    .line 41
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static isTencentMapInstalled()Z
    .locals 1

    const-string v0, "com.tencent.map"

    .line 33
    invoke-static {v0}, Lcom/powervision/aircraft/utils/MapUtil;->isInstallPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static openBaiDuNavi(Landroid/content/Context;DDLjava/lang/String;DDLjava/lang/String;)V
    .locals 14

    .line 224
    invoke-static/range {p6 .. p9}, Lcom/powervision/aircraft/utils/MapUtil;->gaoDeToBaidu(DD)[D

    move-result-object v0

    const/4 v1, 0x0

    .line 225
    aget-wide v2, v0, v1

    const/4 v4, 0x1

    .line 226
    aget-wide v5, v0, v4

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "baidumap://map/direction?mode=driving&"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "|name:"

    const-string v8, ","

    const-wide/16 v9, 0x0

    cmpl-double v11, p1, v9

    if-eqz v11, :cond_0

    .line 237
    invoke-static/range {p1 .. p4}, Lcom/powervision/aircraft/utils/MapUtil;->gaoDeToBaidu(DD)[D

    move-result-object v9

    .line 238
    aget-wide v10, v9, v1

    .line 239
    aget-wide v12, v9, v4

    const-string v1, "origin=latlng:"

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p5

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "&destination=latlng:"

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p10

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.baidu.BaiduMap"

    .line 256
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object v0, p0

    .line 258
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openGaoDeNavi(Landroid/content/Context;DDLjava/lang/String;DDLjava/lang/String;)V
    .locals 4

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "amapuri://route/plan?sourceApplication=maxuslife"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-eqz v3, :cond_0

    const-string v1, "&sname="

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "&slat="

    .line 149
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "&slon="

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "&dlat="

    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "&dlon="

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8, p9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "&dname="

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&dev=0"

    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&t=0"

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "com.autonavi.minimap"

    .line 159
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openGoogleNavi(Landroid/content/Context;DD)V
    .locals 2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "google.navigation:q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 264
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "com.google.android.apps.maps"

    .line 265
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openTencentMap(Landroid/content/Context;DDLjava/lang/String;DDLjava/lang/String;)V
    .locals 5

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "qqmap://map/routeplan?type=drive&policy=0&referer=zhongshuo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    const-wide/16 v2, 0x0

    cmpl-double v4, p1, v2

    if-eqz v4, :cond_0

    const-string v2, "&from="

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "&fromcoord="

    .line 188
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "&to="

    .line 192
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&tocoord="

    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0, p8, p9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "com.tencent.map"

    .line 198
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
