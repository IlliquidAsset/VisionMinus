.class public Lcom/powervision/condition/widget/MovingPointOverlay;
.super Ljava/lang/Object;
.source "MovingPointOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/condition/widget/MovingPointOverlay$a;,
        Lcom/powervision/condition/widget/MovingPointOverlay$MoveListener;,
        Lcom/powervision/condition/widget/MovingPointOverlay$b;,
        Lcom/powervision/condition/widget/MovingPointOverlay$c;
    }
.end annotation


# instance fields
.field private STATUS:Lcom/powervision/condition/widget/MovingPointOverlay$a;

.field private baseOverlay:Lcom/powervision/condition/widget/NationMarker;

.field private duration:J

.field private eachDistance:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field exitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private index:I

.field private mAMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mAnimationBeginTime:J

.field private mLock:Ljava/lang/Object;

.field private mStepDuration:J

.field private mThreadPools:Ljava/util/concurrent/ExecutorService;

.field private moveListener:Lcom/powervision/condition/widget/MovingPointOverlay$MoveListener;

.field private pauseMillis:J

.field private points:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private remainDistance:D

.field private totalDistance:D

.field private useDefaultDescriptor:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/powervision/condition/widget/NationMarker;)V
    .locals 11

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    .line 29
    iput-wide v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->duration:J

    const-wide/16 v0, 0x14

    .line 30
    iput-wide v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->mStepDuration:J

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->points:Ljava/util/LinkedList;

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->eachDistance:Ljava/util/LinkedList;

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->totalDistance:D

    .line 34
    iput-wide v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->remainDistance:D

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->baseOverlay:Lcom/powervision/condition/widget/NationMarker;

    const/4 v1, 0x0

    .line 38
    iput v1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->index:I

    .line 39
    iput-boolean v1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->useDefaultDescriptor:Z

    .line 40
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->exitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    sget-object v1, Lcom/powervision/condition/widget/MovingPointOverlay$a;->a:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    iput-object v1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->STATUS:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->mAnimationBeginTime:J

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 50
    iput-object p1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->mAMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 51
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v4, 0x1

    const/4 v5, 0x2

    const-wide/16 v6, 0x5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v9}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v10, Lcom/powervision/condition/widget/MovingPointOverlay$b;

    invoke-direct {v10, p0, v0}, Lcom/powervision/condition/widget/MovingPointOverlay$b;-><init>(Lcom/powervision/condition/widget/MovingPointOverlay;Lcom/powervision/condition/widget/MovingPointOverlay$1;)V

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->mThreadPools:Ljava/util/concurrent/ExecutorService;

    .line 52
    iput-object p2, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->baseOverlay:Lcom/powervision/condition/widget/NationMarker;

    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/powervision/condition/widget/MovingPointOverlay;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->mAnimationBeginTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/powervision/condition/widget/MovingPointOverlay;J)J
    .locals 0

    .line 27
    iput-wide p1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->mAnimationBeginTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/powervision/condition/widget/MovingPointOverlay;)Lcom/powervision/condition/widget/MovingPointOverlay$a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->STATUS:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    return-object p0
.end method

.method static synthetic access$302(Lcom/powervision/condition/widget/MovingPointOverlay;Lcom/powervision/condition/widget/MovingPointOverlay$a;)Lcom/powervision/condition/widget/MovingPointOverlay$a;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->STATUS:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    return-object p1
.end method

.method static synthetic access$400(Lcom/powervision/condition/widget/MovingPointOverlay;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->index:I

    return p0
.end method

.method static synthetic access$500(Lcom/powervision/condition/widget/MovingPointOverlay;)Ljava/util/LinkedList;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->points:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/condition/widget/MovingPointOverlay;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->mStepDuration:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/powervision/condition/widget/MovingPointOverlay;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$800(Lcom/powervision/condition/widget/MovingPointOverlay;J)Lcom/powervision/base/nationmap/model/IPoint;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/powervision/condition/widget/MovingPointOverlay;->getCurPosition(J)Lcom/powervision/base/nationmap/model/IPoint;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/powervision/condition/widget/MovingPointOverlay;)Lcom/powervision/condition/widget/NationMarker;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->baseOverlay:Lcom/powervision/condition/widget/NationMarker;

    return-object p0
.end method

.method private getCurPosition(J)Lcom/powervision/base/nationmap/model/IPoint;
    .locals 10

    .line 140
    iget-wide v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->duration:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, p1, v0

    if-lez v6, :cond_1

    .line 141
    iget-object p1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->exitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 142
    new-instance p1, Lcom/powervision/base/nationmap/model/IPoint;

    invoke-direct {p1}, Lcom/powervision/base/nationmap/model/IPoint;-><init>()V

    .line 143
    iget-object p2, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    sub-int/2addr p2, v5

    iput p2, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->index:I

    .line 144
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/maps/model/LatLng;

    .line 145
    iget v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->index:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->index:I

    .line 146
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->index:I

    .line 147
    iput-wide v2, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->remainDistance:D

    .line 148
    iget-wide v0, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v2, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3, p1}, Lcom/powervision/condition/utils/MapProjection;->lonlat2Geo(DDLcom/powervision/base/nationmap/model/IPoint;)V

    .line 149
    iget-object p2, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->moveListener:Lcom/powervision/condition/widget/MovingPointOverlay$MoveListener;

    if-eqz p2, :cond_0

    .line 150
    iget-wide v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->remainDistance:D

    invoke-interface {p2, v0, v1}, Lcom/powervision/condition/widget/MovingPointOverlay$MoveListener;->move(D)V

    :cond_0
    return-object p1

    :cond_1
    long-to-double p1, p1

    .line 155
    iget-wide v6, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->totalDistance:D

    mul-double p1, p1, v6

    long-to-double v0, v0

    div-double/2addr p1, v0

    sub-double/2addr v6, p1

    .line 156
    iput-wide v6, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->remainDistance:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x0

    .line 160
    :goto_0
    iget-object v7, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->eachDistance:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 161
    iget-object v7, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->eachDistance:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpg-double v9, p1, v7

    if-gtz v9, :cond_3

    cmpl-double v4, v7, v2

    if-lez v4, :cond_2

    div-double v0, p1, v7

    :cond_2
    move v4, v6

    goto :goto_1

    :cond_3
    sub-double/2addr p1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 174
    :cond_4
    :goto_1
    iget p1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->index:I

    if-eq v4, p1, :cond_5

    iget-object p1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->moveListener:Lcom/powervision/condition/widget/MovingPointOverlay$MoveListener;

    if-eqz p1, :cond_5

    .line 175
    iget-wide v2, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->remainDistance:D

    invoke-interface {p1, v2, v3}, Lcom/powervision/condition/widget/MovingPointOverlay$MoveListener;->move(D)V

    .line 178
    :cond_5
    iput v4, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->index:I

    .line 179
    iget-object p1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {p1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    .line 180
    iget-object p2, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->points:Ljava/util/LinkedList;

    add-int/2addr v4, v5

    invoke-virtual {p2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/maps/model/LatLng;

    .line 181
    new-instance v2, Lcom/powervision/base/nationmap/model/IPoint;

    invoke-direct {v2}, Lcom/powervision/base/nationmap/model/IPoint;-><init>()V

    .line 182
    iget-wide v3, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v3, v4, v5, v6, v2}, Lcom/powervision/condition/utils/MapProjection;->lonlat2Geo(DDLcom/powervision/base/nationmap/model/IPoint;)V

    .line 183
    new-instance v3, Lcom/powervision/base/nationmap/model/IPoint;

    invoke-direct {v3}, Lcom/powervision/base/nationmap/model/IPoint;-><init>()V

    .line 184
    iget-wide v4, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v6, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v3}, Lcom/powervision/condition/utils/MapProjection;->lonlat2Geo(DDLcom/powervision/base/nationmap/model/IPoint;)V

    .line 185
    iget v4, v3, Lcom/powervision/base/nationmap/model/IPoint;->x:I

    iget v5, v2, Lcom/powervision/base/nationmap/model/IPoint;->x:I

    sub-int/2addr v4, v5

    .line 186
    iget v5, v3, Lcom/powervision/base/nationmap/model/IPoint;->y:I

    iget v6, v2, Lcom/powervision/base/nationmap/model/IPoint;->y:I

    sub-int/2addr v5, v6

    .line 187
    invoke-static {p1, p2}, Lcom/powervision/condition/utils/MapUtils;->calculateLineDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_6

    .line 189
    invoke-direct {p0, v2, v3}, Lcom/powervision/condition/widget/MovingPointOverlay;->getRotate(Lcom/powervision/base/nationmap/model/IPoint;Lcom/powervision/base/nationmap/model/IPoint;)F

    .line 190
    iget-object p1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->mAMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_6

    .line 191
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    .line 200
    :cond_6
    new-instance p1, Lcom/powervision/base/nationmap/model/IPoint;

    iget p2, v2, Lcom/powervision/base/nationmap/model/IPoint;->x:I

    int-to-double v6, p2

    int-to-double v3, v4

    mul-double v3, v3, v0

    add-double/2addr v6, v3

    double-to-int p2, v6

    iget v2, v2, Lcom/powervision/base/nationmap/model/IPoint;->y:I

    int-to-double v2, v2

    int-to-double v4, v5

    mul-double v4, v4, v0

    add-double/2addr v2, v4

    double-to-int v0, v2

    invoke-direct {p1, p2, v0}, Lcom/powervision/base/nationmap/model/IPoint;-><init>(II)V

    return-object p1
.end method

.method private getRotate(Lcom/powervision/base/nationmap/model/IPoint;Lcom/powervision/base/nationmap/model/IPoint;)F
    .locals 6

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 206
    iget v0, p2, Lcom/powervision/base/nationmap/model/IPoint;->y:I

    int-to-double v0, v0

    .line 207
    iget v2, p1, Lcom/powervision/base/nationmap/model/IPoint;->y:I

    int-to-double v2, v2

    .line 208
    iget p1, p1, Lcom/powervision/base/nationmap/model/IPoint;->x:I

    int-to-double v4, p1

    .line 209
    iget p1, p2, Lcom/powervision/base/nationmap/model/IPoint;->x:I

    int-to-double p1, p1

    sub-double/2addr p1, v4

    sub-double/2addr v2, v0

    .line 210
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p1, p1, v0

    double-to-float p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private reset()V
    .locals 5

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->STATUS:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    sget-object v1, Lcom/powervision/condition/widget/MovingPointOverlay$a;->c:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->STATUS:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    sget-object v1, Lcom/powervision/condition/widget/MovingPointOverlay$a;->d:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    if-ne v0, v1, :cond_1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->exitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 98
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->mThreadPools:Ljava/util/concurrent/ExecutorService;

    iget-wide v1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->mStepDuration:J

    const-wide/16 v3, 0x14

    add-long/2addr v1, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 99
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->baseOverlay:Lcom/powervision/condition/widget/NationMarker;

    const/4 v1, 0x0

    check-cast v1, Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/powervision/condition/widget/NationMarker;->setAnimation(Landroid/view/animation/Animation;)V

    .line 100
    sget-object v0, Lcom/powervision/condition/widget/MovingPointOverlay$a;->a:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    iput-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->STATUS:Lcom/powervision/condition/widget/MovingPointOverlay$a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 239
    :try_start_0
    invoke-direct {p0}, Lcom/powervision/condition/widget/MovingPointOverlay;->reset()V

    .line 240
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->mThreadPools:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 241
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 242
    :try_start_1
    iget-object v1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 243
    iget-object v1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->eachDistance:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 244
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getIndex()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->index:I

    return v0
.end method

.method public getObject()Lcom/powervision/condition/widget/NationMarker;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->baseOverlay:Lcom/powervision/condition/widget/NationMarker;

    return-object v0
.end method

.method public getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->baseOverlay:Lcom/powervision/condition/widget/NationMarker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/condition/widget/NationMarker;->getPosition()Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/condition/utils/ConvertUtils;->convertNationToAmap(Lcom/powervision/base/nationmap/model/NationLatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->baseOverlay:Lcom/powervision/condition/widget/NationMarker;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->baseOverlay:Lcom/powervision/condition/widget/NationMarker;

    invoke-virtual {v0}, Lcom/powervision/condition/widget/NationMarker;->isVisible()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeMarker()V
    .locals 1

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->baseOverlay:Lcom/powervision/condition/widget/NationMarker;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->baseOverlay:Lcom/powervision/condition/widget/NationMarker;

    invoke-virtual {v0}, Lcom/powervision/condition/widget/NationMarker;->remove()V

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->baseOverlay:Lcom/powervision/condition/widget/NationMarker;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 259
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->eachDistance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public resetIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->index:I

    return-void
.end method

.method public setMoveListener(Lcom/powervision/condition/widget/MovingPointOverlay$MoveListener;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->moveListener:Lcom/powervision/condition/widget/MovingPointOverlay$MoveListener;

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_3

    .line 59
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 60
    invoke-virtual {p0}, Lcom/powervision/condition/widget/MovingPointOverlay;->stopMove()V

    .line 61
    iget-object v1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 64
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v1, :cond_0

    .line 67
    iget-object v2, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->eachDistance:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    const-wide/16 v1, 0x0

    .line 72
    iput-wide v1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->totalDistance:D

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 74
    :goto_1
    iget-object v2, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->points:Ljava/util/LinkedList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v2, v3}, Lcom/powervision/condition/utils/MapUtils;->calculateLineDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v2

    float-to-double v2, v2

    .line 76
    iget-object v4, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->eachDistance:Ljava/util/LinkedList;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-wide v4, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->totalDistance:D

    add-double/2addr v4, v2

    iput-wide v4, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->totalDistance:D

    goto :goto_1

    .line 80
    :cond_2
    iget-wide v1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->totalDistance:D

    iput-wide v1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->remainDistance:D

    .line 81
    iget-object v1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    .line 82
    iget-object v1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->baseOverlay:Lcom/powervision/condition/widget/NationMarker;

    invoke-static {p1}, Lcom/powervision/condition/utils/ConvertUtils;->convertAmapToNation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/powervision/condition/widget/NationMarker;->setPosition(Lcom/powervision/base/nationmap/model/NationLatLng;)V

    .line 83
    invoke-direct {p0}, Lcom/powervision/condition/widget/MovingPointOverlay;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    monitor-exit v0

    return-void

    .line 91
    :cond_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->baseOverlay:Lcom/powervision/condition/widget/NationMarker;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->baseOverlay:Lcom/powervision/condition/widget/NationMarker;

    invoke-static {p1}, Lcom/powervision/condition/utils/ConvertUtils;->convertAmapToNation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/powervision/condition/widget/NationMarker;->setPosition(Lcom/powervision/base/nationmap/model/NationLatLng;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 272
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setRotate(F)V
    .locals 3

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->baseOverlay:Lcom/powervision/condition/widget/NationMarker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->mAMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->mAMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v1, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->baseOverlay:Lcom/powervision/condition/widget/NationMarker;

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v2, p1

    iget p1, v0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    add-float/2addr v2, p1

    neg-float p1, v2

    invoke-virtual {v1, p1}, Lcom/powervision/condition/widget/NationMarker;->setRotateAngle(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 287
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setTotalDuration(I)V
    .locals 2

    mul-int/lit16 p1, p1, 0x12c

    int-to-long v0, p1

    .line 113
    iput-wide v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->duration:J

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->baseOverlay:Lcom/powervision/condition/widget/NationMarker;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->baseOverlay:Lcom/powervision/condition/widget/NationMarker;

    invoke-virtual {v0, p1}, Lcom/powervision/condition/widget/NationMarker;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 298
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public startSmoothMove()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->STATUS:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    sget-object v1, Lcom/powervision/condition/widget/MovingPointOverlay$a;->d:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    if-ne v0, v1, :cond_0

    .line 118
    sget-object v0, Lcom/powervision/condition/widget/MovingPointOverlay$a;->c:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    iput-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->STATUS:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->pauseMillis:J

    sub-long/2addr v0, v2

    .line 120
    iget-wide v2, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->mAnimationBeginTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->mAnimationBeginTime:J

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->STATUS:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    sget-object v1, Lcom/powervision/condition/widget/MovingPointOverlay$a;->a:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->STATUS:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    sget-object v1, Lcom/powervision/condition/widget/MovingPointOverlay$a;->e:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    if-ne v0, v1, :cond_3

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->index:I

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->mThreadPools:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/powervision/condition/widget/MovingPointOverlay$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/powervision/condition/widget/MovingPointOverlay$c;-><init>(Lcom/powervision/condition/widget/MovingPointOverlay;Lcom/powervision/condition/widget/MovingPointOverlay$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public stopMove()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->STATUS:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    sget-object v1, Lcom/powervision/condition/widget/MovingPointOverlay$a;->c:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    if-ne v0, v1, :cond_0

    .line 219
    sget-object v0, Lcom/powervision/condition/widget/MovingPointOverlay$a;->d:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    iput-object v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->STATUS:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/condition/widget/MovingPointOverlay;->pauseMillis:J

    :cond_0
    return-void
.end method
