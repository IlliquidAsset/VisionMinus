.class public Lcom/powervision/base/databus/LiveDataBusX;
.super Ljava/lang/Object;
.source "LiveDataBusX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;
    }
.end annotation


# static fields
.field private static liveDataBus:Lcom/powervision/base/databus/LiveDataBusX;


# instance fields
.field private bus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/powervision/base/databus/LiveDataBusX;

    invoke-direct {v0}, Lcom/powervision/base/databus/LiveDataBusX;-><init>()V

    sput-object v0, Lcom/powervision/base/databus/LiveDataBusX;->liveDataBus:Lcom/powervision/base/databus/LiveDataBusX;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/databus/LiveDataBusX;->bus:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/powervision/base/databus/LiveDataBusX;
    .locals 1

    .line 25
    sget-object v0, Lcom/powervision/base/databus/LiveDataBusX;->liveDataBus:Lcom/powervision/base/databus/LiveDataBusX;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object p2, p0, Lcom/powervision/base/databus/LiveDataBusX;->bus:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 31
    iget-object p2, p0, Lcom/powervision/base/databus/LiveDataBusX;->bus:Ljava/util/Map;

    new-instance v0, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    invoke-direct {v0}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;-><init>()V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    iget-object p2, p0, Lcom/powervision/base/databus/LiveDataBusX;->bus:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
