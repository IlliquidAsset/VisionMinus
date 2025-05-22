.class final Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;
.super Ljava/lang/Object;
.source "AbstractProxyLogicHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/proxy/AbstractProxyLogicHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Event"
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;

.field private final nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;


# direct methods
.method constructor <init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .line 217
    iput-object p2, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;->data:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;)Ljava/lang/Object;
    .locals 0

    .line 210
    iget-object p0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;->data:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .locals 0

    .line 210
    iget-object p0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    return-object p0
.end method
