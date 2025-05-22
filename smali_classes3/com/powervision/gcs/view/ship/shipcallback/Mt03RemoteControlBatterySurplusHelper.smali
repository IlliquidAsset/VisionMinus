.class public Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;
.super Ljava/lang/Object;
.source "Mt03RemoteControlBatterySurplusHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$DisconnectRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mt03RemoteControlBatter"

.field private static mInstance:Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;


# instance fields
.field private disconnectRunnable:Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$DisconnectRunnable;

.field private isRemoteBatteryCallback:Z

.field private listener:Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;

.field private mHandler:Landroid/os/Handler;

.field private mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;",
            ">;"
        }
    .end annotation
.end field

.field public power:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->mHandler:Landroid/os/Handler;

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->power:I

    .line 95
    new-instance v0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1;-><init>(Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->listener:Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->isRemoteBatteryCallback:Z

    return p0
.end method

.method static synthetic access$102(Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->isRemoteBatteryCallback:Z

    return p1
.end method

.method static synthetic access$200(Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;)Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$DisconnectRunnable;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->disconnectRunnable:Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$DisconnectRunnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;)Landroid/os/Handler;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static get()Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;
    .locals 1

    .line 30
    sget-object v0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    invoke-direct {v0}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;-><init>()V

    sput-object v0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    .line 32
    invoke-direct {v0}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->initBatterySurplusCallback()V

    .line 34
    :cond_0
    sget-object v0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    return-object v0
.end method

.method private initBatterySurplusCallback()V
    .locals 2

    .line 38
    new-instance v0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$DisconnectRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$DisconnectRunnable;-><init>(Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->disconnectRunnable:Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$DisconnectRunnable;

    .line 40
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->listener:Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setMt03RemoteControlBatterySurplusListener(Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->disconnectRunnable:Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$DisconnectRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 46
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setMt03RemoteControlBatterySurplusListener(Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;)V

    return-void
.end method

.method public isRemoteBatteryCallback()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->isRemoteBatteryCallback:Z

    return v0
.end method

.method public notifyListeners(I)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 87
    iput p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->power:I

    .line 88
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;

    .line 90
    invoke-interface {v1, p1}, Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;->mt03RemoteControlBatterySurplus(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setRemoteBatteryCallback(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->isRemoteBatteryCallback:Z

    return-void
.end method
