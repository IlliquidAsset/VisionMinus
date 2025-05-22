.class public abstract Lcom/powervision/opensource/geo/ConditionMapInterface;
.super Ljava/lang/Object;
.source "ConditionMapInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/opensource/geo/ConditionMapInterface$OnBubbleClickListener;,
        Lcom/powervision/opensource/geo/ConditionMapInterface$GeoOpInterface;,
        Lcom/powervision/opensource/geo/ConditionMapInterface$CheckBubbleThread;
    }
.end annotation


# instance fields
.field final CHANGE_RANGE:I

.field final CHECKBUBBLE:I

.field final FISH:I

.field final FREE:I

.field public GeoIsOnFire:Z

.field final INIT:I

.field public final NEW_DATA:I

.field public activity:Landroid/app/Activity;

.field checkBubbleThread:Lcom/powervision/opensource/geo/ConditionMapInterface$CheckBubbleThread;

.field commonCallBack:Lcom/powervision/opensource/CommonCallBack;

.field final compute_indenty:I

.field public currentDeep:D

.field data_count:J

.field public deepestRange:D

.field public fishLimate:I

.field geoOpInterface:Lcom/powervision/opensource/geo/ConditionMapInterface$GeoOpInterface;

.field public handlerThread:Landroid/os/HandlerThread;

.field public final insenty:I

.field public lastDeep:D

.field public lastLat:D

.field public lastLon:D

.field public num:J

.field public onBubbleClickListener:Lcom/powervision/opensource/geo/ConditionMapInterface$OnBubbleClickListener;

.field public opHandler:Landroid/os/Handler;

.field public pools:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/powervision/opensource/geo/CenterPoint;",
            "Ljava/util/List<",
            "Lcom/powervision/opensource/geo/Fish;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile running:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->GeoIsOnFire:Z

    const/4 v1, 0x2

    .line 44
    iput v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->fishLimate:I

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 60
    iput-wide v2, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->deepestRange:D

    .line 72
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->pools:Ljava/util/Map;

    const-wide/16 v2, 0x0

    .line 335
    iput-wide v2, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->currentDeep:D

    const-wide/16 v4, 0x0

    .line 344
    iput-wide v4, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->num:J

    .line 345
    iput-wide v2, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->lastLat:D

    .line 346
    iput-wide v2, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->lastLon:D

    .line 347
    iput-wide v2, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->lastDeep:D

    .line 348
    iput v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->insenty:I

    .line 410
    iput v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->NEW_DATA:I

    const/4 v2, 0x1

    .line 412
    iput v2, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->CHANGE_RANGE:I

    .line 414
    iput v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->FREE:I

    .line 416
    iput-wide v4, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->data_count:J

    const/4 v1, 0x3

    .line 418
    iput v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->FISH:I

    const/4 v1, 0x4

    .line 420
    iput v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->INIT:I

    const/4 v2, 0x5

    .line 422
    iput v2, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->CHECKBUBBLE:I

    .line 425
    iput v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->compute_indenty:I

    .line 431
    iput-boolean v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->running:Z

    .line 439
    iput v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->size:I

    .line 514
    new-instance v0, Lcom/powervision/opensource/geo/ConditionMapInterface$4;

    invoke-direct {v0, p0}, Lcom/powervision/opensource/geo/ConditionMapInterface$4;-><init>(Lcom/powervision/opensource/geo/ConditionMapInterface;)V

    iput-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->commonCallBack:Lcom/powervision/opensource/CommonCallBack;

    const/4 v0, 0x0

    .line 542
    iput-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->checkBubbleThread:Lcom/powervision/opensource/geo/ConditionMapInterface$CheckBubbleThread;

    return-void
.end method


# virtual methods
.method public declared-synchronized addANewPositon(DD)V
    .locals 5

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_5

    cmpl-double v2, p3, v0

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 355
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->running:Z

    if-nez v0, :cond_1

    const-string p1, "lzqGeo"

    const-string p2, "  !running return"

    .line 356
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    monitor-exit p0

    return-void

    .line 360
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->lastLat:D

    cmpl-double v2, v0, p1

    if-nez v2, :cond_2

    iget-wide v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->lastLon:D

    cmpl-double v2, v0, p3

    if-nez v2, :cond_2

    iget-wide v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->lastDeep:D

    iget-wide v2, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->currentDeep:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_4

    .line 362
    :cond_2
    iget-wide v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->num:J

    const-wide/16 v2, 0x2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 363
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->opHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 364
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 365
    iput v1, v0, Landroid/os/Message;->what:I

    .line 366
    new-instance v1, Lcom/powervision/opensource/geo/PointGps;

    invoke-direct {v1}, Lcom/powervision/opensource/geo/PointGps;-><init>()V

    .line 367
    iput-wide p1, v1, Lcom/powervision/opensource/geo/PointGps;->x:D

    .line 368
    iput-wide p3, v1, Lcom/powervision/opensource/geo/PointGps;->y:D

    .line 369
    iget-wide v2, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->currentDeep:D

    iput-wide v2, v1, Lcom/powervision/opensource/geo/PointGps;->z:D

    .line 370
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v2, "lzqGeo"

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53d1\u9001\u4e00\u4e2a\u8fc7\u6ee4\u5750\u6807"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->opHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 377
    :cond_3
    iget-wide v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->currentDeep:D

    iput-wide v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->lastDeep:D

    .line 378
    iget-wide v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->num:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->num:J

    .line 382
    :cond_4
    iput-wide p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->lastLat:D

    .line 383
    iput-wide p3, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->lastLon:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    monitor-exit p0

    return-void

    :cond_5
    :goto_0
    :try_start_2
    const-string p1, "lzqGeo"

    const-string p2, "  === 0 return"

    .line 352
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addFish()V
    .locals 6

    const-string v0, "lzqFish"

    const-string v1, "add a fish"

    .line 387
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-boolean v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->running:Z

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->lastLon:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    iget-wide v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->lastLat:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->opHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    const-string v1, "add a useful fish"

    .line 394
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    new-instance v0, Lcom/powervision/opensource/geo/Fish;

    invoke-direct {v0}, Lcom/powervision/opensource/geo/Fish;-><init>()V

    .line 396
    iget-wide v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->lastLat:D

    iput-wide v1, v0, Lcom/powervision/opensource/geo/Fish;->x:D

    .line 397
    iget-wide v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->lastLon:D

    iput-wide v1, v0, Lcom/powervision/opensource/geo/Fish;->y:D

    .line 398
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x3

    .line 399
    iput v2, v1, Landroid/os/Message;->what:I

    .line 400
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 401
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->opHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v0, "lzqGeo"

    const-string v1, "addFish error"

    .line 389
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public changeBitmapSize(II)Landroid/graphics/Bitmap;
    .locals 9

    .line 168
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 169
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 171
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 172
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 173
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 179
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 182
    div-int/2addr v0, p2

    int-to-float p1, v0

    int-to-float p2, v5

    div-float p2, p1, p2

    int-to-float v0, v6

    div-float/2addr p1, v0

    .line 195
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 197
    invoke-virtual {v7, p2, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 201
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    return-object p1
.end method

.method public changeRange(D)V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->opHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 326
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 327
    iput v1, v0, Landroid/os/Message;->what:I

    .line 328
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string p1, "lzqGeo"

    const-string p2, "sendMessage msg.what = CHANGE_RANGE"

    .line 329
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->opHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public abstract changeToABigOne(Lcom/powervision/opensource/geo/CenterPoint;)V
.end method

.method public abstract checkBubble()V
.end method

.method public computeFish(Lcom/powervision/opensource/geo/Fish;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    new-instance v1, Lcom/powervision/opensource/geo/ConditionMapInterface$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/opensource/geo/ConditionMapInterface$2;-><init>(Lcom/powervision/opensource/geo/ConditionMapInterface;Lcom/powervision/opensource/geo/Fish;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public computeGravity(Ljava/util/List;)Lcom/powervision/opensource/geo/PointGps;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/opensource/geo/Fish;",
            ">;)",
            "Lcom/powervision/opensource/geo/PointGps;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v2, v0

    const/4 v4, 0x0

    .line 312
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 313
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/opensource/geo/Fish;

    .line 314
    iget-wide v6, v5, Lcom/powervision/opensource/geo/Fish;->x:D

    add-double/2addr v0, v6

    .line 315
    iget-wide v5, v5, Lcom/powervision/opensource/geo/Fish;->y:D

    add-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 317
    :cond_0
    new-instance v4, Lcom/powervision/opensource/geo/PointGps;

    invoke-direct {v4}, Lcom/powervision/opensource/geo/PointGps;-><init>()V

    .line 318
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v0, v5

    iput-wide v0, v4, Lcom/powervision/opensource/geo/PointGps;->x:D

    .line 319
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-double v0, p1

    div-double/2addr v2, v0

    iput-wide v2, v4, Lcom/powervision/opensource/geo/PointGps;->y:D

    return-object v4
.end method

.method public createAMarkerBitMap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 7

    .line 216
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 218
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float p1, p4

    int-to-float p2, v3

    div-float/2addr p1, p2

    int-to-float p2, p3

    int-to-float p3, v4

    div-float/2addr p2, p3

    .line 224
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 225
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 228
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 230
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    return-object p1
.end method

.method public abstract createANewFishCenter(DDLandroid/app/Activity;)Lcom/powervision/opensource/geo/CenterPoint;
.end method

.method public abstract deleteAllContours()V
.end method

.method public abstract deleteAllFish()V
.end method

.method public abstract deletePolygon([I)V
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public doTest(Lcom/powervision/opensource/CommonCallBack;)V
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/opensource/geo/ConditionMapInterface$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/opensource/geo/ConditionMapInterface$1;-><init>(Lcom/powervision/opensource/geo/ConditionMapInterface;Lcom/powervision/opensource/CommonCallBack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 158
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public abstract drawLines(DDDD)V
.end method

.method public abstract drawPloygon(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/opensource/geo/ContourGps;",
            ">;)V"
        }
    .end annotation
.end method

.method public getDeepestRange()D
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->deepestRange:D

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .line 428
    iget-boolean v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->running:Z

    return v0
.end method

.method public abstract moveTheCenter(Lcom/powervision/opensource/geo/CenterPoint;DD)V
.end method

.method public abstract removeThisFishPoint(Lcom/powervision/opensource/geo/CenterPoint;)V
.end method

.method public setCurrentDeep(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 341
    :cond_0
    iput-wide p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->currentDeep:D

    return-void
.end method

.method public setDeepestRange(D)V
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->deepestRange:D

    return-void
.end method

.method public setGeoOpInterface(Lcom/powervision/opensource/geo/ConditionMapInterface$GeoOpInterface;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->geoOpInterface:Lcom/powervision/opensource/geo/ConditionMapInterface$GeoOpInterface;

    return-void
.end method

.method public setOnBubbleClickListener(Lcom/powervision/opensource/geo/ConditionMapInterface$OnBubbleClickListener;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->onBubbleClickListener:Lcom/powervision/opensource/geo/ConditionMapInterface$OnBubbleClickListener;

    return-void
.end method

.method public declared-synchronized setWindowSize(II)V
    .locals 0

    monitor-enter p0

    .line 441
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startGeoMode()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 446
    :try_start_0
    iput-boolean v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->running:Z

    .line 447
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->handlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->opHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "lzqGeo"

    const-string v2, "startGeoMode"

    .line 451
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "GeoThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->handlerThread:Landroid/os/HandlerThread;

    .line 453
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 454
    new-instance v0, Lcom/powervision/opensource/geo/ConditionMapInterface$3;

    iget-object v2, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/powervision/opensource/geo/ConditionMapInterface$3;-><init>(Lcom/powervision/opensource/geo/ConditionMapInterface;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->opHandler:Landroid/os/Handler;

    .line 501
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 502
    new-instance v0, Lcom/powervision/opensource/geo/ConditionMapInterface$CheckBubbleThread;

    invoke-direct {v0}, Lcom/powervision/opensource/geo/ConditionMapInterface$CheckBubbleThread;-><init>()V

    iput-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->checkBubbleThread:Lcom/powervision/opensource/geo/ConditionMapInterface$CheckBubbleThread;

    .line 503
    iget-object v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->commonCallBack:Lcom/powervision/opensource/CommonCallBack;

    invoke-virtual {v0, v1}, Lcom/powervision/opensource/geo/ConditionMapInterface$CheckBubbleThread;->setCommonCallBack(Lcom/powervision/opensource/CommonCallBack;)V

    .line 504
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->checkBubbleThread:Lcom/powervision/opensource/geo/ConditionMapInterface$CheckBubbleThread;

    invoke-virtual {v0}, Lcom/powervision/opensource/geo/ConditionMapInterface$CheckBubbleThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopGeoMode()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 566
    :try_start_0
    iput-boolean v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->running:Z

    .line 567
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->opHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->opHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->activity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 571
    monitor-exit p0

    return-void

    .line 573
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/powervision/opensource/geo/ConditionMapInterface$5;

    invoke-direct {v1, p0}, Lcom/powervision/opensource/geo/ConditionMapInterface$5;-><init>(Lcom/powervision/opensource/geo/ConditionMapInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 581
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
