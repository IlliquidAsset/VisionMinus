.class public Lorg/apache/mina/util/AvailablePortFinder;
.super Ljava/lang/Object;
.source "AvailablePortFinder.java"


# static fields
.field public static final MAX_PORT_NUMBER:I = 0xbfff

.field public static final MIN_PORT_NUMBER:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static available(I)Z
    .locals 4

    const/4 v0, 0x1

    if-lt p0, v0, :cond_4

    const v1, 0xbfff

    if-gt p0, v1, :cond_4

    const/4 v1, 0x0

    .line 121
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2, p0}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 122
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 123
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3, p0}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 135
    :try_start_3
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return v0

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-object v1, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :catch_2
    nop

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v2, v1

    :goto_0
    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    if-eqz v2, :cond_1

    .line 135
    :try_start_4
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 138
    :catch_3
    :cond_1
    throw p0

    :catch_4
    move-object v2, v1

    :goto_1
    if-eqz v1, :cond_2

    .line 130
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_2
    if-eqz v2, :cond_3

    .line 135
    :try_start_5
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_3
    const/4 p0, 0x0

    return p0

    .line 114
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid start port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAvailablePorts()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const v1, 0xbfff

    .line 61
    invoke-static {v0, v1}, Lorg/apache/mina/util/AvailablePortFinder;->getAvailablePorts(II)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailablePorts(II)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p0, v0, :cond_3

    const v0, 0xbfff

    if-gt p1, v0, :cond_3

    if-gt p0, p1, :cond_3

    .line 160
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    :goto_0
    if-gt p0, p1, :cond_2

    const/4 v1, 0x0

    .line 166
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2, p0}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :try_start_2
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 176
    :catch_1
    :cond_0
    throw p0

    :catch_2
    nop

    :goto_2
    if-eqz v1, :cond_1

    .line 173
    :try_start_4
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_1
    :goto_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 157
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid port range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ~ "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNextAvailable()I
    .locals 2

    .line 74
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 75
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    .line 78
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 82
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getNextAvailable(I)I
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    const v0, 0xbfff

    if-gt p0, v0, :cond_2

    move v1, p0

    :goto_0
    if-gt v1, v0, :cond_1

    .line 98
    invoke-static {v1}, Lorg/apache/mina/util/AvailablePortFinder;->available(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find an available port above "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid start port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
