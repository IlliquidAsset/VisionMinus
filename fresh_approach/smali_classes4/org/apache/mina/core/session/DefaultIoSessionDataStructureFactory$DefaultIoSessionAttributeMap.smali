.class Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;
.super Ljava/lang/Object;
.source "DefaultIoSessionDataStructureFactory.java"

# interfaces
.implements Lorg/apache/mina/core/session/IoSessionAttributeMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultIoSessionAttributeMap"
.end annotation


# instance fields
.field private final attributes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public containsAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z
    .locals 0

    .line 157
    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public getAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    .line 69
    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 72
    :cond_0
    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p3

    :cond_1
    return-object p1

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeKeys(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p1

    .line 165
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    .line 166
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p2, :cond_0

    .line 119
    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    if-nez p3, :cond_0

    return p1

    .line 135
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p1

    .line 127
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replaceAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 146
    :try_start_0
    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public setAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    .line 90
    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAttributeIfAbsent(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 108
    :cond_0
    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultIoSessionAttributeMap;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 101
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
