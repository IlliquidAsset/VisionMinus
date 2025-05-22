.class public Lcn/powervision/upgrade/manager/MatchUtil;
.super Ljava/lang/Object;
.source "MatchUtil.java"


# static fields
.field public static final COMPLETE:Ljava/lang/String; = "#1"

.field public static final FILE_NAME:Ljava/lang/String; = "match"

.field static compare_Once:Z = true

.field public static volatile updating:Z = false


# instance fields
.field public volatile writing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcn/powervision/upgrade/manager/MatchUtil;->writing:Z

    return-void
.end method

.method public static clearTheDir(Ljava/lang/String;)V
    .locals 2

    .line 457
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    invoke-static {p0}, Lcn/powervision/upgrade/FileUtil;->createDir(Ljava/lang/String;)Z

    return-void

    .line 462
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 463
    array-length v0, p0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 464
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 465
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/powervision/upgrade/FileUtil;->deleteFile(Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static compareTwoMathVersion_Path(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const-string v0, ""

    .line 215
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    new-instance p0, Ljava/io/FileReader;

    invoke-direct {p0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 218
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 220
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x2

    const-string v4, "-"

    const-string v5, "="

    const-string v6, "["

    const-string v7, "#"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_2

    .line 221
    :try_start_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 225
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 226
    new-instance v11, Ljava/lang/StringBuilder;

    aget-object v12, v10, v9

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    aget-object v10, v10, v8

    .line 229
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    sub-int/2addr v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    invoke-virtual {v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 233
    array-length v11, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v11, v3, :cond_0

    goto :goto_1

    :cond_2
    move-object v10, v0

    .line 241
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileReader;->close()V

    .line 242
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 245
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    new-instance p1, Ljava/io/FileReader;

    invoke-direct {p1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 248
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 250
    :cond_3
    :goto_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 251
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_2

    .line 253
    :cond_4
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 255
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 256
    new-instance v11, Ljava/lang/StringBuilder;

    aget-object v12, v1, v9

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    aget-object v1, v1, v8

    .line 259
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    sub-int/2addr v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 263
    array-length v11, v11

    if-eq v11, v3, :cond_3

    move-object v0, v1

    .line 271
    :cond_5
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V

    .line 272
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    move-object p1, v0

    move-object v0, v10

    goto :goto_3

    :catch_1
    move-exception p0

    move-object p1, v0

    .line 276
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v10, v0

    move-object v0, p1

    .line 280
    :goto_4
    invoke-static {v10, v0}, Lcn/powervision/upgrade/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized findNewestMatch()Z
    .locals 9

    const-class v0, Lcn/powervision/upgrade/manager/MatchUtil;

    monitor-enter v0

    .line 286
    :try_start_0
    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NEWEST_PATH:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "lzqFirm"

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " match NEWEST_PATH:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NEWEST_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NEWEST_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 293
    monitor-exit v0

    return v2

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 296
    :goto_0
    :try_start_1
    array-length v5, v1

    if-ge v3, v5, :cond_3

    .line 297
    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "#"

    .line 298
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 299
    array-length v7, v5

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    aget-object v7, v5, v2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    aget-object v7, v5, v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x2

    aget-object v5, v5, v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    :cond_3
    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static findServerNewest()Ljava/io/File;
    .locals 7

    .line 396
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->SER_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 398
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const-string v2, ""

    move-object v3, v2

    const/4 v2, 0x0

    .line 403
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 404
    aget-object v4, v0, v1

    .line 405
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 406
    array-length v5, v4

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    .line 407
    aget-object v4, v4, v5

    .line 408
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 412
    :cond_1
    invoke-static {v3, v4}, Lcn/powervision/upgrade/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    move v2, v1

    move-object v3, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    :cond_3
    aget-object v0, v0, v2

    return-object v0
.end method

.method public static getAssestVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 609
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, ""

    .line 613
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "match"

    .line 614
    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 616
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v2, "[VER"

    .line 618
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "="

    .line 619
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aget-object p0, p0, v2

    move-object v0, p0

    .line 624
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 628
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getLoaclNewestVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 146
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NEWEST_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcn/powervision/upgrade/manager/MatchUtil;->getLoaclNewestVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoaclNewestVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v1, ""

    if-nez p0, :cond_0

    return-object v1

    .line 156
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 157
    array-length v0, p0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    return-object v1

    .line 161
    :cond_1
    array-length v0, p0

    if-gt v0, v2, :cond_6

    const/4 v0, 0x0

    .line 165
    aget-object p0, p0, v0

    .line 167
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 168
    array-length v5, v3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 170
    aget-object p0, v3, v2

    goto :goto_1

    .line 173
    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance p0, Ljava/io/FileReader;

    invoke-direct {p0, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 176
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 178
    :cond_3
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 179
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    const-string v6, "["

    .line 181
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "="

    .line 183
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 184
    new-instance v6, Ljava/lang/StringBuilder;

    aget-object v7, v5, v0

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    aget-object v5, v5, v2

    .line 187
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v6, "-"

    .line 190
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 191
    array-length v6, v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    move-object v1, v5

    .line 199
    :cond_5
    invoke-virtual {p0}, Ljava/io/FileReader;->close()V

    .line 200
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object p0, v1

    :goto_1
    return-object p0

    .line 162
    :cond_6
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "\u6587\u4ef6\u6570\u91cf\u4e0d\u5bf9"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getNewestPath()Ljava/lang/String;
    .locals 8

    .line 311
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NEWEST_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 313
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 318
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_3

    .line 319
    aget-object v5, v0, v3

    .line 320
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 321
    array-length v6, v5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    aget-object v6, v5, v1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    aget-object v7, v5, v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 322
    aget-object v5, v5, v6

    .line 323
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 327
    :cond_1
    invoke-static {v2, v5}, Lcn/powervision/upgrade/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_1
    move v4, v3

    move-object v2, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 337
    :cond_3
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NEWEST_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isMatchApp(Ljava/util/ArrayList;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;",
            ">;)I"
        }
    .end annotation

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compare_Once = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcn/powervision/upgrade/manager/MatchUtil;->compare_Once:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "helin"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    sget-boolean v0, Lcn/powervision/upgrade/manager/MatchUtil;->compare_Once:Z

    const/4 v2, -0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 731
    sput-boolean v0, Lcn/powervision/upgrade/manager/MatchUtil;->compare_Once:Z

    .line 732
    invoke-static {}, Lcom/powervision/base/utils/AppUtils;->getVersionName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 734
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v4, v5, :cond_3

    .line 735
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;

    .line 736
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;

    iget-object v7, v7, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    const-string v8, "ADR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string p0, "lzqFirm"

    const-string v4, "1.3 app firm_Name ADR"

    .line 737
    invoke-static {p0, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v4, v5, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->min_firm_version:Ljava/lang/String;

    invoke-static {v3, v4}, Lcn/powervision/upgrade/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v0, "1.3 app \u6bd4\u5de6\u8fb9\u5c0f "

    .line 739
    invoke-static {p0, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    goto :goto_1

    .line 746
    :cond_1
    iget-object v4, v5, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->max_firm_version:Ljava/lang/String;

    invoke-static {v3, v4}, Lcn/powervision/upgrade/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v0, "1.3 app \u5728\u533a\u95f4\u5185 "

    .line 747
    invoke-static {p0, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 755
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "res = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v6, :cond_4

    return v0

    .line 761
    :cond_4
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p0

    .line 762
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getHistoryMapList()Ljava/util/List;

    move-result-object p0

    .line 768
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 769
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getMasterVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 770
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getMasterVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 771
    invoke-static {}, Lcom/powervision/base/utils/AppUtils;->getVersionName()Ljava/lang/String;

    move-result-object v1

    .line 772
    invoke-static {v1, v0}, Lcom/powervision/gcs/manager/FirmWareUtils;->firstIsBigger(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x2

    goto :goto_2

    :cond_7
    :goto_3
    const/4 v0, -0x1

    goto :goto_2

    :cond_8
    return v0
.end method

.method public static isMatchDev(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/Firmware;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;",
            ">;"
        }
    .end annotation

    .line 793
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 796
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 797
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " 2.3 forceFirmWareBeans:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqFirm"

    invoke-static {v2, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " 2.3 temp:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 800
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 801
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;

    .line 804
    iget-object v5, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    const-string v6, "IOS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    const-string v6, "VERSION"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    const-string v6, "ADR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "DL01_R"

    const-string v6, "MCU"

    if-eqz p2, :cond_1

    .line 806
    iget-object v7, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_5

    .line 810
    :cond_1
    iget-object v7, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v5, 0x0

    .line 820
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_4

    .line 821
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/powervision/upgrade/model/entity/Firmware;

    .line 822
    iget-object v6, v6, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    iget-object v8, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_5

    .line 829
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/powervision/upgrade/model/entity/Firmware;

    .line 830
    iget-object v9, v8, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 831
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " 2.3 \u6709\u8fd9\u4e2a\u56fa\u4ef6 \u673a\u5668\u4e2d:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v11, v8}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " 2.3 \u6709\u8fd9\u4e2a\u56fa\u4ef6  \u673a\u5668\u4e2d\u7248\u672c:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Lcom/google/gson/Gson;

    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v10, v9}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v9, ""

    :goto_3
    const-string v8, "0.0.0"

    .line 837
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 838
    iget-object v8, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->min_firm_version:Ljava/lang/String;

    invoke-static {v9, v8}, Lcn/powervision/upgrade/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 839
    new-instance p0, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;

    invoke-direct {p0}, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;-><init>()V

    .line 840
    iget-object p1, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    iput-object p1, p0, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    const/4 p1, 0x2

    .line 841
    iput p1, p0, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->isForce:I

    .line 842
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " 2.3 \u5c0f\u4e8e\u5de6\u8fb9 \u9700\u8981\u5f3a\u5236\u5347\u7ea7 matchVersion:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->min_firm_version:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " 2.3 \u5c0f\u4e8e\u5de6\u8fb9 \u9700\u8981\u5f3a\u5236\u5347\u7ea7 localVersion:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 850
    :cond_6
    iget-object v8, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->max_firm_version:Ljava/lang/String;

    invoke-static {v9, v8}, Lcn/powervision/upgrade/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 851
    new-instance v8, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;

    invoke-direct {v8}, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;-><init>()V

    .line 852
    iget-object v4, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    iput-object v4, v8, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    .line 853
    iput v7, v8, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->isForce:I

    .line 854
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, " 2.3 \u5c0f\u4e8e\u5de6\u8fb9 \u5728\u533a\u95f4\u5185 \u663e\u793a\u5347\u7ea7"

    .line 855
    invoke-static {v2, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string v4, " 2.3 0.0.0\u9ed8\u8ba4\u6ca1\u95ee\u9898 "

    .line 860
    invoke-static {v2, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    if-eqz v6, :cond_9

    .line 864
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    :goto_6
    return-object v0
.end method

.method public static isMatchItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 878
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 879
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;

    .line 880
    iget-object v3, v2, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 882
    iget-object v3, v2, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->min_firm_version:Ljava/lang/String;

    invoke-static {p1, v3}, Lcn/powervision/upgrade/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    .line 886
    :cond_1
    iget-object v2, v2, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->max_firm_version:Ljava/lang/String;

    invoke-static {p1, v2}, Lcn/powervision/upgrade/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static isMatchLocal(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/Firmware;",
            ">;Z)I"
        }
    .end annotation

    .line 645
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 649
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " 1.3 forceFirmWareBeans:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "lzqFirm"

    invoke-static {v2, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " 1.3 temp:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 652
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v0, v4, :cond_9

    .line 653
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;

    .line 656
    iget-object v6, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    const-string v7, "IOS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    const-string v7, "VERSION"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    const-string v7, "ADR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "DL01_R"

    const-string v7, "MCU"

    if-eqz p2, :cond_1

    .line 658
    iget-object v8, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_4

    .line 662
    :cond_1
    iget-object v8, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_4

    :cond_2
    const/4 v6, 0x0

    .line 672
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_4

    .line 673
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/powervision/upgrade/model/entity/Firmware;

    .line 674
    iget-object v7, v7, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    iget-object v9, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_5

    .line 681
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/powervision/upgrade/model/entity/Firmware;

    .line 682
    iget-object v10, v9, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 683
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " 1.3 \u672c\u5730\u6709\u8fd9\u4e2a\u56fa\u4ef6 \u672c\u5730\u4e2d:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v12, Lcom/google/gson/Gson;

    invoke-direct {v12}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v12, v9}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " 1.3 \u672c\u5730\u6709\u8fd9\u4e2a\u56fa\u4ef6  Match\u6587\u4ef6\u4e2d:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v11, v10}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v10, ""

    .line 689
    :goto_3
    iget-object v9, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->min_firm_version:Ljava/lang/String;

    invoke-static {v10, v9}, Lcn/powervision/upgrade/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 691
    iput v5, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->isForce:I

    .line 692
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " 1.3 \u5c0f\u4e8e\u5de6\u8fb9 \u9700\u8981\u4e0b\u8f7d matchVersion:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->min_firm_version:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " 1.3 \u5c0f\u4e8e\u5de6\u8fb9 \u9700\u8981\u4e0b\u8f7d localVersion:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    goto :goto_5

    .line 699
    :cond_6
    iget-object v5, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->max_firm_version:Ljava/lang/String;

    invoke-static {v10, v5}, Lcn/powervision/upgrade/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 701
    iput v8, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->isForce:I

    const-string v3, " 1.3 \u5728\u533a\u95f4\u5185 \u663e\u793a\u4e0b\u8f7d"

    .line 702
    invoke-static {v2, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " 1.3 \u5728\u533a\u95f4\u5185 max_firm_version:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->max_firm_version:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " 1.3 \u5728\u533a\u95f4\u5185 min_firm_version:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->min_firm_version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " 1.3 \u5728\u533a\u95f4\u5185 download_item_version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_7
    if-eqz v7, :cond_8

    .line 711
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_5
    return v3
.end method

.method public static declared-synchronized readMathFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;",
            ">;"
        }
    .end annotation

    const-class v0, Lcn/powervision/upgrade/manager/MatchUtil;

    monitor-enter v0

    .line 54
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :try_start_1
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 62
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 64
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    const-string v8, "[-s-]ANDROID"

    .line 68
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const-string v8, "[-e-]ANDROID"

    .line 70
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v6, 0x0

    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    const-string v8, "["

    .line 74
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "="

    .line 76
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 77
    new-instance v8, Ljava/lang/StringBuilder;

    aget-object v10, v7, v5

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    aget-object v7, v7, v9

    .line 80
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 82
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 83
    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "helin"

    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close read file ... + list.size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/powervision/base/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3, v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->setHistoryMapList(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    const-string v8, "#"

    .line 99
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_0

    :cond_4
    const-string v8, "["

    .line 101
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "[-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "="

    .line 103
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    aget-object v10, v7, v5

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    aget-object v7, v7, v9

    .line 107
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "-"

    .line 110
    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 111
    array-length v11, v10

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    .line 112
    aget-object v7, v10, v5

    .line 113
    aget-object v9, v10, v9

    .line 115
    new-instance v10, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;

    invoke-direct {v10}, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;-><init>()V

    .line 116
    iput-object v8, v10, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    .line 117
    iput-object v7, v10, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->min_firm_version:Ljava/lang/String;

    .line 118
    iput-object v9, v10, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->max_firm_version:Ljava/lang/String;

    .line 119
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 122
    :cond_5
    new-instance v9, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;

    invoke-direct {v9}, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;-><init>()V

    .line 123
    iput-object v8, v9, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    .line 124
    iput-object v7, v9, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->min_firm_version:Ljava/lang/String;

    goto/16 :goto_0

    .line 133
    :cond_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 134
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 136
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    :goto_2
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static renameTheNewestFile(Ljava/io/File;)V
    .locals 3

    .line 601
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method public static declared-synchronized updateTheNewFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcn/powervision/upgrade/manager/MatchUtil;

    monitor-enter v0

    const/4 v1, 0x1

    .line 427
    :try_start_0
    sput-boolean v1, Lcn/powervision/upgrade/manager/MatchUtil;->updating:Z

    const-string v1, "match"

    .line 430
    sget-object v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NEWEST_PATH:Ljava/lang/String;

    invoke-static {v2}, Lcn/powervision/upgrade/manager/MatchUtil;->clearTheDir(Ljava/lang/String;)V

    .line 431
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NEWEST_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 434
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v2, 0x0

    .line 436
    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NEWEST_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "match"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 438
    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 439
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 442
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    .line 443
    invoke-virtual {p1, v1, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 446
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 447
    invoke-static {v3}, Lcn/powervision/upgrade/manager/MatchUtil;->renameTheNewestFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 449
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 452
    :goto_1
    sput-boolean v2, Lcn/powervision/upgrade/manager/MatchUtil;->updating:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized updateTheNewFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    const-class p0, Lcn/powervision/upgrade/manager/MatchUtil;

    monitor-enter p0

    const/4 v0, 0x1

    .line 380
    :try_start_0
    sput-boolean v0, Lcn/powervision/upgrade/manager/MatchUtil;->updating:Z

    .line 381
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NEWEST_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "match"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    sget-object p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NEWEST_PATH:Ljava/lang/String;

    invoke-static {p1}, Lcn/powervision/upgrade/manager/MatchUtil;->clearTheDir(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :try_start_1
    invoke-static {}, Lcn/powervision/upgrade/manager/MatchUtil;->findServerNewest()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 386
    invoke-static {p1, v0}, Lcn/powervision/upgrade/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 388
    :cond_0
    invoke-static {v0}, Lcn/powervision/upgrade/manager/MatchUtil;->renameTheNewestFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 390
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    .line 392
    sput-boolean p1, Lcn/powervision/upgrade/manager/MatchUtil;->updating:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized updateTheNewFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcn/powervision/upgrade/manager/MatchUtil;

    monitor-enter v0

    const/4 v1, 0x1

    .line 365
    :try_start_0
    sput-boolean v1, Lcn/powervision/upgrade/manager/MatchUtil;->updating:Z

    .line 366
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NEWEST_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "match"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 367
    sget-object p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NEWEST_PATH:Ljava/lang/String;

    invoke-static {p1}, Lcn/powervision/upgrade/manager/MatchUtil;->clearTheDir(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :try_start_1
    new-instance p1, Ljava/io/FileWriter;

    invoke-direct {p1, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 370
    invoke-virtual {p1, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Ljava/io/FileWriter;->close()V

    .line 372
    invoke-static {v1}, Lcn/powervision/upgrade/manager/MatchUtil;->renameTheNewestFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 374
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 376
    sput-boolean p0, Lcn/powervision/upgrade/manager/MatchUtil;->updating:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 377
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized updateTheNewFile(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-class v0, Lcn/powervision/upgrade/manager/MatchUtil;

    monitor-enter v0

    const/4 v1, 0x1

    .line 342
    :try_start_0
    sput-boolean v1, Lcn/powervision/upgrade/manager/MatchUtil;->updating:Z

    .line 343
    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NEWEST_PATH:Ljava/lang/String;

    invoke-static {v1}, Lcn/powervision/upgrade/manager/MatchUtil;->clearTheDir(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 346
    :try_start_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NEWEST_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "match"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    new-instance p1, Ljava/io/FileWriter;

    invoke-direct {p1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    .line 348
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;

    .line 351
    iget-object v6, v5, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->firm_Name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->min_firm_version:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->max_firm_version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {p1}, Ljava/io/FileWriter;->close()V

    .line 354
    invoke-static {v2}, Lcn/powervision/upgrade/manager/MatchUtil;->renameTheNewestFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 356
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 358
    :goto_1
    sput-boolean v1, Lcn/powervision/upgrade/manager/MatchUtil;->updating:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 360
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public downloadMatch(Lcn/powervision/upgrade/manager/CommonCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/base/config/Ap03GlobalConfig;->getMatchHead()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 495
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 496
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x8

    .line 497
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 498
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    .line 499
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 500
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 501
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 502
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 503
    invoke-virtual {v1, p3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p3

    .line 504
    invoke-virtual {p3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p3

    .line 505
    invoke-virtual {v0, p3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p3

    .line 506
    new-instance v0, Lcn/powervision/upgrade/manager/MatchUtil$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/powervision/upgrade/manager/MatchUtil$1;-><init>(Lcn/powervision/upgrade/manager/MatchUtil;Lcn/powervision/upgrade/manager/CommonCallBack;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
