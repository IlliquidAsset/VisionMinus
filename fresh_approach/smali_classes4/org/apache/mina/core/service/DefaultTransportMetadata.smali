.class public Lorg/apache/mina/core/service/DefaultTransportMetadata;
.super Ljava/lang/Object;
.source "DefaultTransportMetadata.java"

# interfaces
.implements Lorg/apache/mina/core/service/TransportMetadata;


# instance fields
.field private final addressType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionless:Z

.field private final envelopeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fragmentation:Z

.field private final name:Ljava/lang/String;

.field private final providerName:Ljava/lang/String;

.field private final sessionConfigType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/Class<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            ">;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    if-eqz p2, :cond_7

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 66
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 67
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p5, :cond_4

    if-eqz p7, :cond_3

    .line 79
    array-length v0, p7

    if-eqz v0, :cond_2

    if-eqz p6, :cond_1

    .line 87
    iput-object p1, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->providerName:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->name:Ljava/lang/String;

    .line 89
    iput-boolean p3, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->connectionless:Z

    .line 90
    iput-boolean p4, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->fragmentation:Z

    .line 91
    iput-object p5, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->addressType:Ljava/lang/Class;

    .line 92
    iput-object p6, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->sessionConfigType:Ljava/lang/Class;

    .line 94
    new-instance p1, Lorg/apache/mina/util/IdentityHashSet;

    invoke-direct {p1}, Lorg/apache/mina/util/IdentityHashSet;-><init>()V

    .line 95
    array-length p2, p7

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object p4, p7, p3

    .line 96
    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->envelopeTypes:Ljava/util/Set;

    return-void

    .line 84
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sessionConfigType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "envelopeTypes is empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "envelopeTypes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addressType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name is empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "providerName is empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "providerName"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAddressType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->addressType:Ljava/lang/Class;

    return-object v0
.end method

.method public getEnvelopeTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->envelopeTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->providerName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionConfigType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->sessionConfigType:Ljava/lang/Class;

    return-object v0
.end method

.method public hasFragmentation()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->fragmentation:Z

    return v0
.end method

.method public isConnectionless()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->connectionless:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->name:Ljava/lang/String;

    return-object v0
.end method
