.class public Lcom/powervision/livestreaming/client/CallbackDelivery;
.super Ljava/lang/Object;
.source "CallbackDelivery.java"


# static fields
.field private static instance:Lcom/powervision/livestreaming/client/CallbackDelivery;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final mCallbackPoster:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/powervision/livestreaming/client/CallbackDelivery;->handler:Landroid/os/Handler;

    .line 21
    new-instance v0, Lcom/powervision/livestreaming/client/CallbackDelivery$1;

    invoke-direct {v0, p0}, Lcom/powervision/livestreaming/client/CallbackDelivery$1;-><init>(Lcom/powervision/livestreaming/client/CallbackDelivery;)V

    iput-object v0, p0, Lcom/powervision/livestreaming/client/CallbackDelivery;->mCallbackPoster:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/livestreaming/client/CallbackDelivery;)Landroid/os/Handler;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/powervision/livestreaming/client/CallbackDelivery;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static i()Lcom/powervision/livestreaming/client/CallbackDelivery;
    .locals 1

    .line 17
    sget-object v0, Lcom/powervision/livestreaming/client/CallbackDelivery;->instance:Lcom/powervision/livestreaming/client/CallbackDelivery;

    if-nez v0, :cond_0

    new-instance v0, Lcom/powervision/livestreaming/client/CallbackDelivery;

    invoke-direct {v0}, Lcom/powervision/livestreaming/client/CallbackDelivery;-><init>()V

    sput-object v0, Lcom/powervision/livestreaming/client/CallbackDelivery;->instance:Lcom/powervision/livestreaming/client/CallbackDelivery;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/powervision/livestreaming/client/CallbackDelivery;->mCallbackPoster:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
