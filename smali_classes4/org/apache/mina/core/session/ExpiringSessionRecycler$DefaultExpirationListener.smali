.class Lorg/apache/mina/core/session/ExpiringSessionRecycler$DefaultExpirationListener;
.super Ljava/lang/Object;
.source "ExpiringSessionRecycler.java"

# interfaces
.implements Lorg/apache/mina/util/ExpirationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/session/ExpiringSessionRecycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultExpirationListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/util/ExpirationListener<",
        "Lorg/apache/mina/core/session/IoSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/session/ExpiringSessionRecycler;


# direct methods
.method private constructor <init>(Lorg/apache/mina/core/session/ExpiringSessionRecycler;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler$DefaultExpirationListener;->this$0:Lorg/apache/mina/core/session/ExpiringSessionRecycler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/session/ExpiringSessionRecycler;Lorg/apache/mina/core/session/ExpiringSessionRecycler$1;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lorg/apache/mina/core/session/ExpiringSessionRecycler$DefaultExpirationListener;-><init>(Lorg/apache/mina/core/session/ExpiringSessionRecycler;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic expired(Ljava/lang/Object;)V
    .locals 0

    .line 100
    check-cast p1, Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/ExpiringSessionRecycler$DefaultExpirationListener;->expired(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public expired(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 102
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    return-void
.end method
