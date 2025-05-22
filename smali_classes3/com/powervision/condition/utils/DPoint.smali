.class public Lcom/powervision/condition/utils/DPoint;
.super Ljava/lang/Object;
.source "DPoint.java"


# static fields
.field private static final M_POOL:Landroidx/core/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SynchronizedPool<",
            "Lcom/powervision/condition/utils/DPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public x:D

.field public y:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/powervision/condition/utils/DPoint;->M_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/powervision/condition/utils/DPoint;->x:D

    .line 45
    iput-wide p3, p0, Lcom/powervision/condition/utils/DPoint;->y:D

    return-void
.end method

.method public static obtain()Lcom/powervision/condition/utils/DPoint;
    .locals 3

    .line 15
    sget-object v0, Lcom/powervision/condition/utils/DPoint;->M_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/condition/utils/DPoint;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/powervision/condition/utils/DPoint;

    invoke-direct {v0}, Lcom/powervision/condition/utils/DPoint;-><init>()V

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 19
    invoke-direct {v0, v1, v2, v1, v2}, Lcom/powervision/condition/utils/DPoint;->set(DD)V

    :goto_0
    return-object v0
.end method

.method public static obtain(DD)Lcom/powervision/condition/utils/DPoint;
    .locals 1

    .line 26
    sget-object v0, Lcom/powervision/condition/utils/DPoint;->M_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/condition/utils/DPoint;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/powervision/condition/utils/DPoint;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/powervision/condition/utils/DPoint;-><init>(DD)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/powervision/condition/utils/DPoint;->set(DD)V

    :goto_0
    return-object v0
.end method

.method private set(DD)V
    .locals 0

    .line 49
    iput-wide p1, p0, Lcom/powervision/condition/utils/DPoint;->x:D

    .line 50
    iput-wide p3, p0, Lcom/powervision/condition/utils/DPoint;->y:D

    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .line 37
    sget-object v0, Lcom/powervision/condition/utils/DPoint;->M_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method
