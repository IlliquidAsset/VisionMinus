.class public Lcom/powervision/base/nationmap/model/IPoint;
.super Landroid/graphics/Point;
.source "IPoint.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final M_POOL:Landroidx/core/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SynchronizedPool<",
            "Lcom/powervision/base/nationmap/model/IPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/powervision/base/nationmap/model/IPoint;->M_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 43
    iput p1, p0, Lcom/powervision/base/nationmap/model/IPoint;->x:I

    .line 44
    iput p2, p0, Lcom/powervision/base/nationmap/model/IPoint;->y:I

    return-void
.end method

.method public static obtain()Lcom/powervision/base/nationmap/model/IPoint;
    .locals 2

    .line 14
    sget-object v0, Lcom/powervision/base/nationmap/model/IPoint;->M_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/nationmap/model/IPoint;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/powervision/base/nationmap/model/IPoint;

    invoke-direct {v0}, Lcom/powervision/base/nationmap/model/IPoint;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1, v1}, Lcom/powervision/base/nationmap/model/IPoint;->set(II)V

    :goto_0
    return-object v0
.end method

.method public static obtain(II)Lcom/powervision/base/nationmap/model/IPoint;
    .locals 1

    .line 25
    sget-object v0, Lcom/powervision/base/nationmap/model/IPoint;->M_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/nationmap/model/IPoint;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/powervision/base/nationmap/model/IPoint;

    invoke-direct {v0, p0, p1}, Lcom/powervision/base/nationmap/model/IPoint;-><init>(II)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/powervision/base/nationmap/model/IPoint;->set(II)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 51
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/nationmap/model/IPoint;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public recycle()V
    .locals 1

    .line 36
    sget-object v0, Lcom/powervision/base/nationmap/model/IPoint;->M_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method
