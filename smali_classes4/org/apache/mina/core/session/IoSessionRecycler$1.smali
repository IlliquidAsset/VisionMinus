.class final Lorg/apache/mina/core/session/IoSessionRecycler$1;
.super Ljava/lang/Object;
.source "IoSessionRecycler.java"

# interfaces
.implements Lorg/apache/mina/core/session/IoSessionRecycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/session/IoSessionRecycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    return-void
.end method

.method public recycle(Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    return-void
.end method
