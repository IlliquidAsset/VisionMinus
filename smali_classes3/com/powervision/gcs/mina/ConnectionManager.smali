.class public Lcom/powervision/gcs/mina/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ConnectionManager"


# instance fields
.field ioServiceListener:Lorg/apache/mina/core/service/IoServiceListener;

.field private iohandler:Lorg/apache/mina/core/service/IoHandler;

.field private lockp:Ljava/lang/Object;

.field private mAddress:Ljava/net/InetSocketAddress;

.field private mConfig:Lcom/powervision/gcs/mina/ConnectionConfig;

.field public mConnection:Lorg/apache/mina/transport/socket/nio/NioSocketConnector;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mSession:Lorg/apache/mina/core/session/IoSession;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/mina/ConnectionConfig;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager;->lockp:Ljava/lang/Object;

    .line 42
    new-instance v0, Lcom/powervision/gcs/mina/ConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/mina/ConnectionManager$1;-><init>(Lcom/powervision/gcs/mina/ConnectionManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager;->ioServiceListener:Lorg/apache/mina/core/service/IoServiceListener;

    .line 34
    iput-object p1, p0, Lcom/powervision/gcs/mina/ConnectionManager;->mConfig:Lcom/powervision/gcs/mina/ConnectionConfig;

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/powervision/gcs/mina/ConnectionConfig;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/mina/ConnectionManager;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/powervision/gcs/mina/ConnectionManager;->mAddress:Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method static synthetic access$002(Lcom/powervision/gcs/mina/ConnectionManager;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/powervision/gcs/mina/ConnectionManager;->mAddress:Ljava/net/InetSocketAddress;

    return-object p1
.end method

.method static synthetic access$100(Lcom/powervision/gcs/mina/ConnectionManager;)Lcom/powervision/gcs/mina/ConnectionConfig;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/powervision/gcs/mina/ConnectionManager;->mConfig:Lcom/powervision/gcs/mina/ConnectionConfig;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/mina/ConnectionManager;)Lorg/apache/mina/core/service/IoHandler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/powervision/gcs/mina/ConnectionManager;->iohandler:Lorg/apache/mina/core/service/IoHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/mina/ConnectionManager;)Lorg/apache/mina/core/session/IoSession;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/powervision/gcs/mina/ConnectionManager;->mSession:Lorg/apache/mina/core/session/IoSession;

    return-object p0
.end method

.method static synthetic access$302(Lcom/powervision/gcs/mina/ConnectionManager;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/session/IoSession;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/powervision/gcs/mina/ConnectionManager;->mSession:Lorg/apache/mina/core/session/IoSession;

    return-object p1
.end method

.method static synthetic access$402(Lcom/powervision/gcs/mina/ConnectionManager;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/powervision/gcs/mina/ConnectionManager;->mContext:Ljava/lang/ref/WeakReference;

    return-object p1
.end method
