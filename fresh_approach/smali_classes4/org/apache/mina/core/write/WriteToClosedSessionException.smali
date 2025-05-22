.class public Lorg/apache/mina/core/write/WriteToClosedSessionException;
.super Lorg/apache/mina/core/write/WriteException;
.source "WriteToClosedSessionException.java"


# static fields
.field private static final serialVersionUID:J = 0x4d0649a7507aba11L


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

    .line 47
    invoke-direct {p0, p1}, Lorg/apache/mina/core/write/WriteException;-><init>(Ljava/util/Collection;)V

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

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/write/WriteException;-><init>(Ljava/util/Collection;Ljava/lang/String;)V

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

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/write/WriteException;-><init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Throwable;)V

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

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/write/WriteException;-><init>(Ljava/util/Collection;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/apache/mina/core/write/WriteException;-><init>(Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/write/WriteException;-><init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/write/WriteException;-><init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/Throwable;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/write/WriteException;-><init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/Throwable;)V

    return-void
.end method
