.class final Lorg/apache/mina/filter/executor/IoEventQueueHandler$1;
.super Ljava/lang/Object;
.source "IoEventQueueHandler.java"

# interfaces
.implements Lorg/apache/mina/filter/executor/IoEventQueueHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/executor/IoEventQueueHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public offered(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V
    .locals 0

    return-void
.end method

.method public polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V
    .locals 0

    return-void
.end method
