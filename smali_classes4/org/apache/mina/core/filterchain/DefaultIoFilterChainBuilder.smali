.class public Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
.super Ljava/lang/Object;
.source "DefaultIoFilterChainBuilder.java"

# interfaces
.implements Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 84
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p1, p1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    return-void

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filterChain"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkBaseName(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 535
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 536
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown filter name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "baseName"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isOrderedMap(Ljava/util/Map;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)Z"
        }
    .end annotation

    .line 413
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 415
    const-class v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 416
    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "{} is an ordered map."

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return v1

    .line 423
    :cond_1
    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "{} is not a {}"

    invoke-interface {v0, v4, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    move-object v0, p1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 431
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v5, v3, v2

    .line 432
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OrderedMap"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 433
    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 434
    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    .line 435
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "{} is an ordered map (guessed from that it implements OrderedMap interface.)"

    .line 434
    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 440
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 443
    :cond_6
    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 444
    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "{} doesn\'t implement OrderedMap interface."

    invoke-interface {v0, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    :cond_7
    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Last resort; trying to create a new map instance with a default constructor and test if insertion order is maintained."

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 455
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 464
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 465
    new-instance v4, Lorg/apache/mina/core/filterchain/IoFilterAdapter;

    invoke-direct {v4}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    const/4 v5, 0x0

    :goto_2
    const/high16 v6, 0x10000

    if-ge v5, v6, :cond_c

    .line 471
    :cond_8
    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 472
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 474
    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 479
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 480
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 481
    sget-object p1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 482
    sget-object p1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "The specified map didn\'t pass the insertion order test after {} tries."

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    return v2

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 489
    :cond_c
    sget-object p1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "The specified map passed the insertion order test."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    .line 457
    sget-object v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 458
    sget-object v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Failed to create a new map instance of \'{}\'."

    invoke-interface {v1, v3, p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    return v2
.end method

.method private register(ILorg/apache/mina/core/filterchain/IoFilterChain$Entry;)V
    .locals 2

    .line 541
    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    .line 542
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Other filter is using the same name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 2

    monitor-enter p0

    .line 262
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->checkBaseName(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 266
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p1

    new-instance v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p3, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->register(ILorg/apache/mina/core/filterchain/IoFilterChain$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 2

    monitor-enter p0

    .line 243
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->checkBaseName(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 247
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p1

    new-instance v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p3, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->register(ILorg/apache/mina/core/filterchain/IoFilterChain$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFirst(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 222
    :try_start_0
    new-instance v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->register(ILorg/apache/mina/core/filterchain/IoFilterChain$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 3

    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->register(ILorg/apache/mina/core/filterchain/IoFilterChain$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 496
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 371
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)Z"
        }
    .end annotation

    .line 212
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public get(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilter;"
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 162
    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 147
    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object p1

    return-object p1
.end method

.method public getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllReversed()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getAll()Ljava/util/List;

    move-result-object v0

    .line 181
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0
.end method

.method public getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 127
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 3

    .line 94
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 95
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEntry(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 3

    .line 110
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 111
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized remove(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilter;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 328
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 330
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    iget-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 332
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 336
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 325
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filterType"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 284
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 286
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    iget-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 288
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 292
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown filter name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 281
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 306
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 308
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 309
    iget-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 310
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 314
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 303
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 1

    monitor-enter p0

    .line 340
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->checkBaseName(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    .line 342
    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    .line 343
    invoke-static {p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->access$100(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(Ljava/lang/Class;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 358
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 359
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    check-cast v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    invoke-static {v1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->access$100(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    monitor-exit p0

    return-void

    .line 364
    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filter not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 3

    monitor-enter p0

    .line 348
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 349
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 350
    check-cast v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    invoke-static {v1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->access$100(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    .line 354
    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filter not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFilters(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 388
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->isOrderedMap(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 393
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 394
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 395
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 398
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filters contains a null value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 396
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filters contains a null key."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 403
    :cond_2
    monitor-enter p0

    .line 404
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->clear()V

    .line 405
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 406
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilter;

    invoke-virtual {p0, v1, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    goto :goto_1

    .line 408
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 389
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filters is not an ordered map. Please try "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Ljava/util/LinkedHashMap;

    .line 390
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 385
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ "

    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    if-nez v2, :cond_0

    const-string v4, ", "

    .line 509
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/16 v4, 0x28

    .line 514
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    invoke-interface {v3}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    .line 516
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 517
    invoke-interface {v3}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    .line 518
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const-string v1, "empty"

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, " }"

    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
