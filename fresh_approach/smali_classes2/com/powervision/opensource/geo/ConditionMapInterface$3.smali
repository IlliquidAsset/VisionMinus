.class Lcom/powervision/opensource/geo/ConditionMapInterface$3;
.super Landroid/os/Handler;
.source "ConditionMapInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/opensource/geo/ConditionMapInterface;->startGeoMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;


# direct methods
.method constructor <init>(Lcom/powervision/opensource/geo/ConditionMapInterface;Landroid/os/Looper;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$3;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 457
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 459
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$3;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-object v0, v0, Lcom/powervision/opensource/geo/ConditionMapInterface;->geoOpInterface:Lcom/powervision/opensource/geo/ConditionMapInterface$GeoOpInterface;

    const-string v1, "lzqGeo"

    if-nez v0, :cond_0

    const-string p1, "geoOpInterface == null"

    .line 460
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 464
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_6

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 p1, 0x4

    if-eq v0, p1, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1

    goto/16 :goto_0

    .line 495
    :cond_1
    iget-object p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$3;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    invoke-virtual {p1}, Lcom/powervision/opensource/geo/ConditionMapInterface;->checkBubble()V

    goto/16 :goto_0

    :cond_2
    const-string p1, "case init"

    .line 466
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$3;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-object p1, p1, Lcom/powervision/opensource/geo/ConditionMapInterface;->geoOpInterface:Lcom/powervision/opensource/geo/ConditionMapInterface$GeoOpInterface;

    invoke-interface {p1}, Lcom/powervision/opensource/geo/ConditionMapInterface$GeoOpInterface;->init()V

    goto/16 :goto_0

    :cond_3
    const-string v0, "lzqFish"

    const-string v1, "computeAFish 1"

    .line 491
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$3;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/opensource/geo/Fish;

    invoke-virtual {v0, p1}, Lcom/powervision/opensource/geo/ConditionMapInterface;->computeFish(Lcom/powervision/opensource/geo/Fish;)V

    goto :goto_0

    .line 487
    :cond_4
    iget-object p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$3;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-object p1, p1, Lcom/powervision/opensource/geo/ConditionMapInterface;->geoOpInterface:Lcom/powervision/opensource/geo/ConditionMapInterface$GeoOpInterface;

    invoke-interface {p1}, Lcom/powervision/opensource/geo/ConditionMapInterface$GeoOpInterface;->free()V

    .line 488
    iget-object p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$3;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iput-wide v2, p1, Lcom/powervision/opensource/geo/ConditionMapInterface;->data_count:J

    goto :goto_0

    :cond_5
    const-string v0, "case CHANGE_RANGE"

    .line 481
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$3;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/opensource/geo/ConditionMapInterface;->setDeepestRange(D)V

    .line 483
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$3;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-object v0, v0, Lcom/powervision/opensource/geo/ConditionMapInterface;->geoOpInterface:Lcom/powervision/opensource/geo/ConditionMapInterface$GeoOpInterface;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/powervision/opensource/geo/ConditionMapInterface$GeoOpInterface;->changeTheRange(D)V

    goto :goto_0

    :cond_6
    const-string v0, "NEW_DATA"

    .line 471
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$3;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-object v0, v0, Lcom/powervision/opensource/geo/ConditionMapInterface;->geoOpInterface:Lcom/powervision/opensource/geo/ConditionMapInterface$GeoOpInterface;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/opensource/geo/PointGps;

    invoke-interface {v0, p1}, Lcom/powervision/opensource/geo/ConditionMapInterface$GeoOpInterface;->addANewData(Lcom/powervision/opensource/geo/PointGps;)V

    .line 473
    iget-object p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$3;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-wide v4, p1, Lcom/powervision/opensource/geo/ConditionMapInterface;->data_count:J

    cmp-long p1, v4, v2

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$3;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-wide v4, p1, Lcom/powervision/opensource/geo/ConditionMapInterface;->data_count:J

    const-wide/16 v6, 0x4

    rem-long/2addr v4, v6

    cmp-long p1, v4, v2

    if-nez p1, :cond_7

    const-string p1, "doMath"

    .line 474
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$3;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-object p1, p1, Lcom/powervision/opensource/geo/ConditionMapInterface;->geoOpInterface:Lcom/powervision/opensource/geo/ConditionMapInterface$GeoOpInterface;

    invoke-interface {p1}, Lcom/powervision/opensource/geo/ConditionMapInterface$GeoOpInterface;->doMath()V

    .line 477
    :cond_7
    iget-object p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$3;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-wide v0, p1, Lcom/powervision/opensource/geo/ConditionMapInterface;->data_count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/powervision/opensource/geo/ConditionMapInterface;->data_count:J

    :goto_0
    return-void
.end method
