.class Lcom/powervision/gcs/mina/ConnectionManager$1$DefaultHandler;
.super Lorg/apache/mina/core/service/IoHandlerAdapter;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/mina/ConnectionManager$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultHandler"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$1:Lcom/powervision/gcs/mina/ConnectionManager$1;


# direct methods
.method private constructor <init>(Lcom/powervision/gcs/mina/ConnectionManager$1;Landroid/content/Context;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/powervision/gcs/mina/ConnectionManager$1$DefaultHandler;->this$1:Lcom/powervision/gcs/mina/ConnectionManager$1;

    invoke-direct {p0}, Lorg/apache/mina/core/service/IoHandlerAdapter;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/powervision/gcs/mina/ConnectionManager$1$DefaultHandler;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    check-cast p2, [B

    check-cast p2, [B

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    invoke-super {p0, p1, p2}, Lorg/apache/mina/core/service/IoHandlerAdapter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    const-string p2, "ConnectionManager"

    const-string v0, "-\u5ba2\u6237\u7aef\u4e0e\u670d\u52a1\u7aef\u8fde\u63a5\u7a7a\u95f2"

    .line 209
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 213
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->closeOnFlush()Lorg/apache/mina/core/future/CloseFuture;

    :cond_0
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 190
    invoke-super {p0, p1}, Lorg/apache/mina/core/service/IoHandlerAdapter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    const-string p1, "ConnectionManager"

    const-string v0, "\u8fde\u63a5\u6253\u5f00"

    .line 191
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
