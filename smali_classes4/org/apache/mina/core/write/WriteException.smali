.class public Lorg/apache/mina/core/write/WriteException;
.super Ljava/io/IOException;
.source "WriteException.java"


# static fields
.field private static final serialVersionUID:J = -0x39ee796f1d098c25L


# instance fields
.field private final requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 96
    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 118
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, p3}, Lorg/apache/mina/core/write/WriteException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 120
    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 130
    invoke-virtual {p0, p2}, Lorg/apache/mina/core/write/WriteException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 131
    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 51
    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Lorg/apache/mina/core/write/WriteRequest;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Lorg/apache/mina/core/write/WriteRequest;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 73
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p3}, Lorg/apache/mina/core/write/WriteException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 75
    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Lorg/apache/mina/core/write/WriteRequest;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/Throwable;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 85
    invoke-virtual {p0, p2}, Lorg/apache/mina/core/write/WriteException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 86
    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Lorg/apache/mina/core/write/WriteRequest;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    return-void
.end method

.method private static asRequestList(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 153
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    new-instance v0, Lorg/apache/mina/util/MapBackedSet;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/mina/util/MapBackedSet;-><init>(Ljava/util/Map;)V

    .line 160
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/write/WriteRequest;

    .line 161
    invoke-interface {v1}, Lorg/apache/mina/core/write/WriteRequest;->getOriginalRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 154
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "requests is empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "requests"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static asRequestList(Lorg/apache/mina/core/write/WriteRequest;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    invoke-interface {p0}, Lorg/apache/mina/core/write/WriteRequest;->getOriginalRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 169
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "request"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRequest()Lorg/apache/mina/core/write/WriteRequest;
    .locals 2

    .line 145
    iget-object v0, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/write/WriteRequest;

    return-object v0
.end method

.method public getRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    return-object v0
.end method
