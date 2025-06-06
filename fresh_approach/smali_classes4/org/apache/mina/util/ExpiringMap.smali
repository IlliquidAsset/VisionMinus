.class public Lorg/apache/mina/util/ExpiringMap;
.super Ljava/lang/Object;
.source "ExpiringMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/util/ExpiringMap$Expirer;,
        Lorg/apache/mina/util/ExpiringMap$ExpiringObject;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_EXPIRATION_INTERVAL:I = 0x1

.field public static final DEFAULT_TIME_TO_LIVE:I = 0x3c

.field private static volatile expirerCount:I = 0x1


# instance fields
.field private final delegate:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;",
            "Lorg/apache/mina/util/ExpiringMap<",
            "TK;TV;>.ExpiringObject;>;"
        }
    .end annotation
.end field

.field private final expirationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/apache/mina/util/ExpirationListener<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final expirer:Lorg/apache/mina/util/ExpiringMap$Expirer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/util/ExpiringMap<",
            "TK;TV;>.Expirer;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x3c

    const/4 v1, 0x1

    .line 58
    invoke-direct {p0, v0, v1}, Lorg/apache/mina/util/ExpiringMap;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 68
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/util/ExpiringMap;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/mina/util/ExpiringMap;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/CopyOnWriteArrayList;II)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/CopyOnWriteArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;",
            "Lorg/apache/mina/util/ExpiringMap<",
            "TK;TV;>.ExpiringObject;>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/apache/mina/util/ExpirationListener<",
            "TV;>;>;II)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    iput-object p2, p0, Lorg/apache/mina/util/ExpiringMap;->expirationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 88
    new-instance p1, Lorg/apache/mina/util/ExpiringMap$Expirer;

    invoke-direct {p1, p0}, Lorg/apache/mina/util/ExpiringMap$Expirer;-><init>(Lorg/apache/mina/util/ExpiringMap;)V

    iput-object p1, p0, Lorg/apache/mina/util/ExpiringMap;->expirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    int-to-long p2, p3

    .line 89
    invoke-virtual {p1, p2, p3}, Lorg/apache/mina/util/ExpiringMap$Expirer;->setTimeToLive(J)V

    .line 90
    iget-object p1, p0, Lorg/apache/mina/util/ExpiringMap;->expirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    int-to-long p2, p4

    invoke-virtual {p1, p2, p3}, Lorg/apache/mina/util/ExpiringMap$Expirer;->setExpirationInterval(J)V

    return-void
.end method

.method static synthetic access$008()I
    .locals 2

    .line 37
    sget v0, Lorg/apache/mina/util/ExpiringMap;->expirerCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/mina/util/ExpiringMap;->expirerCount:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/mina/util/ExpiringMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/mina/util/ExpiringMap;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/apache/mina/util/ExpiringMap;->expirationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method


# virtual methods
.method public addExpirationListener(Lorg/apache/mina/util/ExpirationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/util/ExpirationListener<",
            "TV;>;)V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->expirationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;

    if-eqz p1, :cond_0

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->setLastAccessTime(J)V

    .line 109
    invoke-virtual {p1}, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExpirationInterval()I
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->expirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    invoke-virtual {v0}, Lorg/apache/mina/util/ExpiringMap$Expirer;->getExpirationInterval()I

    move-result v0

    return v0
.end method

.method public getExpirer()Lorg/apache/mina/util/ExpiringMap$Expirer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/mina/util/ExpiringMap<",
            "TK;TV;>.Expirer;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->expirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    return-object v0
.end method

.method public getTimeToLive()I
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->expirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    invoke-virtual {v0}, Lorg/apache/mina/util/ExpiringMap$Expirer;->getTimeToLive()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v7, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;-><init>(Lorg/apache/mina/util/ExpiringMap;Ljava/lang/Object;Ljava/lang/Object;J)V

    invoke-virtual {v0, p1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 100
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 159
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 160
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/mina/util/ExpiringMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 121
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeExpirationListener(Lorg/apache/mina/util/ExpirationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/util/ExpirationListener<",
            "TV;>;)V"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->expirationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExpirationInterval(I)V
    .locals 3

    .line 193
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->expirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/util/ExpiringMap$Expirer;->setExpirationInterval(J)V

    return-void
.end method

.method public setTimeToLive(I)V
    .locals 3

    .line 197
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->expirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/util/ExpiringMap$Expirer;->setTimeToLive(J)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
