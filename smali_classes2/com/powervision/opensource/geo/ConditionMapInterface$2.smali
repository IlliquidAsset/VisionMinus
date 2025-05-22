.class Lcom/powervision/opensource/geo/ConditionMapInterface$2;
.super Ljava/lang/Object;
.source "ConditionMapInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/opensource/geo/ConditionMapInterface;->computeFish(Lcom/powervision/opensource/geo/Fish;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

.field final synthetic val$currentFish:Lcom/powervision/opensource/geo/Fish;


# direct methods
.method constructor <init>(Lcom/powervision/opensource/geo/ConditionMapInterface;Lcom/powervision/opensource/geo/Fish;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$2;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iput-object p2, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$2;->val$currentFish:Lcom/powervision/opensource/geo/Fish;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 245
    new-instance v0, Lcom/powervision/opensource/geo/PointGps;

    invoke-direct {v0}, Lcom/powervision/opensource/geo/PointGps;-><init>()V

    .line 246
    iget-object v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$2;->val$currentFish:Lcom/powervision/opensource/geo/Fish;

    iget-wide v1, v1, Lcom/powervision/opensource/geo/Fish;->x:D

    iput-wide v1, v0, Lcom/powervision/opensource/geo/PointGps;->x:D

    .line 247
    iget-object v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$2;->val$currentFish:Lcom/powervision/opensource/geo/Fish;

    iget-wide v1, v1, Lcom/powervision/opensource/geo/Fish;->y:D

    iput-wide v1, v0, Lcom/powervision/opensource/geo/PointGps;->y:D

    .line 250
    iget-object v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$2;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-object v1, v1, Lcom/powervision/opensource/geo/ConditionMapInterface;->pools:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 251
    iget-object v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$2;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-object v1, v1, Lcom/powervision/opensource/geo/ConditionMapInterface;->pools:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 252
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 254
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/opensource/geo/CenterPoint;

    .line 256
    iget-object v4, v3, Lcom/powervision/opensource/geo/CenterPoint;->centerL:Lcom/powervision/opensource/geo/PointGps;

    .line 259
    invoke-static {v4, v0}, Lcom/powervision/opensource/geo/Distance;->mathDistence(Lcom/powervision/opensource/geo/PointGps;Lcom/powervision/opensource/geo/PointGps;)F

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 261
    iget-object v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$2;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-object v1, v1, Lcom/powervision/opensource/geo/ConditionMapInterface;->pools:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 262
    iget-object v2, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$2;->val$currentFish:Lcom/powervision/opensource/geo/Fish;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v2, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$2;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    invoke-virtual {v2, v1}, Lcom/powervision/opensource/geo/ConditionMapInterface;->computeGravity(Ljava/util/List;)Lcom/powervision/opensource/geo/PointGps;

    move-result-object v2

    .line 264
    iput-object v2, v3, Lcom/powervision/opensource/geo/CenterPoint;->centerL:Lcom/powervision/opensource/geo/PointGps;

    const/4 v10, 0x1

    .line 266
    iget-object v4, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$2;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-wide v6, v2, Lcom/powervision/opensource/geo/PointGps;->x:D

    iget-wide v8, v2, Lcom/powervision/opensource/geo/PointGps;->y:D

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/powervision/opensource/geo/ConditionMapInterface;->moveTheCenter(Lcom/powervision/opensource/geo/CenterPoint;DD)V

    .line 267
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$2;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget v2, v2, Lcom/powervision/opensource/geo/ConditionMapInterface;->fishLimate:I

    if-le v1, v2, :cond_1

    const-string v1, "lzqFish"

    const-string v2, "changeToABigOne"

    .line 268
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-boolean v1, v3, Lcom/powervision/opensource/geo/CenterPoint;->isBig:Z

    if-nez v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$2;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    invoke-virtual {v1, v3}, Lcom/powervision/opensource/geo/ConditionMapInterface;->changeToABigOne(Lcom/powervision/opensource/geo/CenterPoint;)V

    :cond_1
    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_4

    .line 279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 280
    iget-object v2, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$2;->val$currentFish:Lcom/powervision/opensource/geo/Fish;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v3, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$2;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-wide v4, v0, Lcom/powervision/opensource/geo/PointGps;->x:D

    iget-wide v6, v0, Lcom/powervision/opensource/geo/PointGps;->y:D

    iget-object v2, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$2;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-object v8, v2, Lcom/powervision/opensource/geo/ConditionMapInterface;->activity:Landroid/app/Activity;

    invoke-virtual/range {v3 .. v8}, Lcom/powervision/opensource/geo/ConditionMapInterface;->createANewFishCenter(DDLandroid/app/Activity;)Lcom/powervision/opensource/geo/CenterPoint;

    move-result-object v2

    .line 282
    iput-object v0, v2, Lcom/powervision/opensource/geo/CenterPoint;->centerL:Lcom/powervision/opensource/geo/PointGps;

    .line 283
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$2;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-object v0, v0, Lcom/powervision/opensource/geo/ConditionMapInterface;->pools:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 287
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 288
    iget-object v2, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$2;->val$currentFish:Lcom/powervision/opensource/geo/Fish;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v3, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$2;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-wide v4, v0, Lcom/powervision/opensource/geo/PointGps;->x:D

    iget-wide v6, v0, Lcom/powervision/opensource/geo/PointGps;->y:D

    iget-object v2, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$2;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-object v8, v2, Lcom/powervision/opensource/geo/ConditionMapInterface;->activity:Landroid/app/Activity;

    invoke-virtual/range {v3 .. v8}, Lcom/powervision/opensource/geo/ConditionMapInterface;->createANewFishCenter(DDLandroid/app/Activity;)Lcom/powervision/opensource/geo/CenterPoint;

    move-result-object v2

    .line 290
    iput-object v0, v2, Lcom/powervision/opensource/geo/CenterPoint;->centerL:Lcom/powervision/opensource/geo/PointGps;

    .line 291
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$2;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-object v0, v0, Lcom/powervision/opensource/geo/ConditionMapInterface;->pools:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-void
.end method
