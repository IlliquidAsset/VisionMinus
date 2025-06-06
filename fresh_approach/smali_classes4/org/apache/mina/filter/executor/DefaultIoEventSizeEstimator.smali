.class public Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;
.super Ljava/lang/Object;
.source "DefaultIoEventSizeEstimator.java"

# interfaces
.implements Lorg/apache/mina/filter/executor/IoEventSizeEstimator;


# instance fields
.field private final class2size:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    .line 55
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static align(I)I
    .locals 1

    .line 148
    rem-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    .line 149
    div-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x8

    :cond_0
    return p0
.end method

.method private estimateSize(Ljava/lang/Class;Ljava/util/Set;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)I"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 108
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 112
    :cond_1
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 115
    :cond_2
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    move-object v2, p1

    const/16 v3, 0x8

    :goto_0
    if-eqz v2, :cond_5

    .line 120
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 122
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 123
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    and-int/2addr v8, v1

    if-eqz v8, :cond_3

    goto :goto_2

    .line 128
    :cond_3
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Class;Ljava/util/Set;)I

    move-result v7

    add-int/2addr v3, v7

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 119
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 132
    :cond_5
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 135
    invoke-static {v3}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->align(I)I

    move-result p2

    .line 138
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_6

    .line 141
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_6
    return p2
.end method


# virtual methods
.method public estimateSize(Ljava/lang/Object;)I
    .locals 3

    const/16 v0, 0x8

    if-nez p1, :cond_0

    return v0

    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Class;Ljava/util/Set;)I

    move-result v1

    add-int/2addr v1, v0

    .line 85
    instance-of v0, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_1

    .line 86
    check-cast p1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p1

    :goto_0
    add-int/2addr v1, p1

    goto :goto_2

    .line 87
    :cond_1
    instance-of v0, p1, Lorg/apache/mina/core/write/WriteRequest;

    if-eqz v0, :cond_2

    .line 88
    check-cast p1, Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {p1}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 89
    :cond_2
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 90
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 91
    :cond_3
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_4

    .line 92
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    .line 97
    :cond_4
    :goto_2
    invoke-static {v1}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->align(I)I

    move-result p1

    return p1
.end method

.method public estimateSize(Lorg/apache/mina/core/session/IoEvent;)I
    .locals 1

    .line 70
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method
