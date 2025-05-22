.class final Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;
.super Ljava/lang/Object;
.source "SharePrefrenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/SharePrefrenceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MobSharePreference"
.end annotation


# static fields
.field private static handler:Landroid/os/Handler;


# instance fields
.field private hashon:Lcom/mob/tools/utils/Hashon;

.field private listener:Lcom/mob/tools/utils/SharePrefrenceHelper$OnCommitListener;

.field private spFile:Ljava/io/File;

.field private spMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 227
    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference$1;

    invoke-direct {v0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference$1;-><init>()V

    const-string v1, "s"

    invoke-static {v1, v0}, Lcom/mob/tools/MobHandlerThread;->newHandler(Ljava/lang/String;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 260
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "Mob"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 261
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spFile:Ljava/io/File;

    .line 262
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 263
    iget-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 266
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spMap:Ljava/util/HashMap;

    .line 267
    new-instance p1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->hashon:Lcom/mob/tools/utils/Hashon;

    .line 268
    invoke-direct {p0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->open()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 270
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 302
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private open()V
    .locals 5

    .line 275
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    .line 278
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 279
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "utf-8"

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 280
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    .line 284
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "\n"

    .line 285
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 291
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->hashon:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spMap:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 293
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 296
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object p1, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 309
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 310
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "json"

    .line 311
    iget-object v2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->hashon:Lcom/mob/tools/utils/Hashon;

    iget-object v3, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "file"

    .line 312
    iget-object v2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 p2, 0x1

    .line 314
    iput p2, p1, Landroid/os/Message;->what:I

    .line 315
    iget-object p2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->listener:Lcom/mob/tools/utils/SharePrefrenceHelper$OnCommitListener;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 316
    sget-object p2, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public clear()V
    .locals 5

    .line 458
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 459
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 460
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    sget-object v0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 463
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "json"

    .line 464
    iget-object v3, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->hashon:Lcom/mob/tools/utils/Hashon;

    iget-object v4, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "file"

    .line 465
    iget-object v3, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    .line 467
    iput v1, v0, Landroid/os/Message;->what:I

    .line 468
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->listener:Lcom/mob/tools/utils/SharePrefrenceHelper$OnCommitListener;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 469
    sget-object v1, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 460
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAll()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 431
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 432
    iget-object v2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 433
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 434
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 406
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 408
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2
.end method

.method public getByte(Ljava/lang/String;B)B
    .locals 0

    .line 322
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 324
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getChar(Ljava/lang/String;C)C
    .locals 0

    .line 394
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 396
    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 0

    .line 382
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 384
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0

    .line 370
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 372
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    .line 346
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 348
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    .line 358
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 360
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 0

    .line 334
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 336
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 418
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 420
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public putAll(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 440
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    sget-object p1, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 442
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 443
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "json"

    .line 444
    iget-object v2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->hashon:Lcom/mob/tools/utils/Hashon;

    iget-object v3, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "file"

    .line 445
    iget-object v2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->spFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 447
    iput v0, p1, Landroid/os/Message;->what:I

    .line 448
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->listener:Lcom/mob/tools/utils/SharePrefrenceHelper$OnCommitListener;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 440
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 0

    int-to-byte p2, p2

    .line 414
    invoke-virtual {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->putByte(Ljava/lang/String;B)V

    return-void
.end method

.method public putByte(Ljava/lang/String;B)V
    .locals 0

    .line 330
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public putChar(Ljava/lang/String;C)V
    .locals 0

    .line 402
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 0

    .line 390
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 0

    .line 378
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 0

    .line 354
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 0

    .line 366
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public putShort(Ljava/lang/String;S)V
    .locals 0

    .line 342
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 426
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 454
    invoke-direct {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOnCommitListener(Lcom/mob/tools/utils/SharePrefrenceHelper$OnCommitListener;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$MobSharePreference;->listener:Lcom/mob/tools/utils/SharePrefrenceHelper$OnCommitListener;

    return-void
.end method
