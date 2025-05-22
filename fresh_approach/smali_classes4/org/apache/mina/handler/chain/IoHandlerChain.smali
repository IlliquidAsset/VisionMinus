.class public Lorg/apache/mina/handler/chain/IoHandlerChain;
.super Ljava/lang/Object;
.source "IoHandlerChain.java"

# interfaces
.implements Lorg/apache/mina/handler/chain/IoHandlerCommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    }
.end annotation


# static fields
.field private static volatile nextId:I


# instance fields
.field private final NEXT_COMMAND:Ljava/lang/String;

.field private final head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

.field private final id:I

.field private final name2entry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget v0, Lorg/apache/mina/handler/chain/IoHandlerChain;->nextId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/mina/handler/chain/IoHandlerChain;->nextId:I

    iput v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->id:I

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/mina/handler/chain/IoHandlerChain;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".nextCommand"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->NEXT_COMMAND:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    .line 52
    new-instance v0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-direct {p0}, Lorg/apache/mina/handler/chain/IoHandlerChain;->createHeadCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "head"

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;-><init>(Lorg/apache/mina/handler/chain/IoHandlerChain;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;Lorg/apache/mina/handler/chain/IoHandlerChain$1;)V

    iput-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 53
    new-instance v8, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-direct {p0}, Lorg/apache/mina/handler/chain/IoHandlerChain;->createTailCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v6

    const-string v5, "tail"

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;-><init>(Lorg/apache/mina/handler/chain/IoHandlerChain;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;Lorg/apache/mina/handler/chain/IoHandlerChain$1;)V

    iput-object v8, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 54
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-static {v0, v8}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$102(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    return-void
.end method

.method static synthetic access$200(Lorg/apache/mina/handler/chain/IoHandlerChain;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->NEXT_COMMAND:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lorg/apache/mina/handler/chain/IoHandlerChain;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/handler/chain/IoHandlerChain;->callNextCommand(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method private callNextCommand(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    invoke-virtual {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getNextCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/handler/chain/IoHandlerCommand;->execute(Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method private checkAddable(Ljava/lang/String;)V
    .locals 3

    .line 171
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other filter is using the same name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkOldName(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .locals 3

    .line 160
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    if-eqz v0, :cond_0

    return-object v0

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown filter name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createHeadCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;
    .locals 1

    .line 58
    new-instance v0, Lorg/apache/mina/handler/chain/IoHandlerChain$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/handler/chain/IoHandlerChain$1;-><init>(Lorg/apache/mina/handler/chain/IoHandlerChain;)V

    return-object v0
.end method

.method private createTailCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;
    .locals 1

    .line 66
    new-instance v0, Lorg/apache/mina/handler/chain/IoHandlerChain$2;

    invoke-direct {v0, p0}, Lorg/apache/mina/handler/chain/IoHandlerChain$2;-><init>(Lorg/apache/mina/handler/chain/IoHandlerChain;)V

    return-object v0
.end method

.method private deregister(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)V
    .locals 2

    .line 146
    invoke-static {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$300(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 147
    invoke-static {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v1

    .line 148
    invoke-static {v0, v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$102(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 149
    invoke-static {v1, v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$302(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 151
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$400(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private register(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    .locals 8

    .line 138
    new-instance v7, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-static {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;-><init>(Lorg/apache/mina/handler/chain/IoHandlerChain;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;Lorg/apache/mina/handler/chain/IoHandlerChain$1;)V

    .line 139
    invoke-static {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object p3

    invoke-static {p3, v7}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$302(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 140
    invoke-static {p1, v7}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$102(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 142
    iget-object p1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    invoke-interface {p1, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    .locals 0

    monitor-enter p0

    .line 119
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object p1

    .line 120
    invoke-direct {p0, p2}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkAddable(Ljava/lang/String;)V

    .line 121
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/handler/chain/IoHandlerChain;->register(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    .locals 0

    monitor-enter p0

    .line 113
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object p1

    .line 114
    invoke-direct {p0, p2}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkAddable(Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$300(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/handler/chain/IoHandlerChain;->register(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFirst(Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    .locals 1

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkAddable(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/handler/chain/IoHandlerChain;->register(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addLast(Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    .locals 1

    monitor-enter p0

    .line 108
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkAddable(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$300(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/handler/chain/IoHandlerChain;->register(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 131
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 132
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->remove(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 135
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/handler/chain/IoHandlerCommand;",
            ">;)Z"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 230
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    if-eq v0, v1, :cond_1

    .line 231
    invoke-virtual {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 234
    :cond_0
    invoke-static {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 0

    .line 214
    invoke-virtual {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->getEntry(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(Lorg/apache/mina/handler/chain/IoHandlerCommand;)Z
    .locals 2

    .line 218
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 219
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    if-eq v0, v1, :cond_1

    .line 220
    invoke-virtual {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 223
    :cond_0
    invoke-static {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public execute(Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->NEXT_COMMAND:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/handler/chain/IoHandlerChain;->callNextCommand(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object p1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->NEXT_COMMAND:Ljava/lang/String;

    invoke-interface {p2, p1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    iget-object p3, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->NEXT_COMMAND:Ljava/lang/String;

    invoke-interface {p2, p3}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    throw p1
.end method

.method public get(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerCommand;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->getEntry(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 90
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object p1

    return-object p1
.end method

.method public getAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v1

    .line 195
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    if-eq v1, v2, :cond_0

    .line 196
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-static {v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllReversed()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$300(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v1

    .line 206
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    if-eq v1, v2, :cond_0

    .line 207
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-static {v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$300(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public getNextCommand(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->getEntry(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 99
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getNextCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerCommand;
    .locals 0

    monitor-enter p0

    .line 125
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object p1

    .line 126
    invoke-direct {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->deregister(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)V

    .line 127
    invoke-virtual {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ "

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v1

    const/4 v2, 0x1

    .line 247
    :goto_0
    iget-object v3, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    if-eq v1, v3, :cond_1

    if-nez v2, :cond_0

    const-string v3, ", "

    .line 249
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x28

    .line 254
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    .line 256
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    .line 258
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    invoke-static {v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const-string v1, "empty"

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, " }"

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
