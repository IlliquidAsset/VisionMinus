.class public Lcom/powervision/gcs/camera/w4/CameraHelper;
.super Ljava/lang/Object;
.source "CameraHelper.java"

# interfaces
.implements Lcom/powervision/gcs/camera/w4/IChannelListener;


# static fields
.field public static final CAM_CONNECTIVITY_WIFI_WIFI:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CameraHelper"

.field private static mHelper:Lcom/powervision/gcs/camera/w4/CameraHelper;

.field private static final worker:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private hasWifiConnected:Z

.field private mCmdChannel:Lcom/powervision/gcs/camera/w4/CmdChannel;

.field private mCmdChannelWIFI:Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;

.field private mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/powervision/gcs/camera/w4/IChannelListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/powervision/gcs/camera/w4/CameraHelper;->worker:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/camera/w4/CameraHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/CameraHelper;->mCmdChannelWIFI:Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;-><init>(Lcom/powervision/gcs/camera/w4/IChannelListener;)V

    iput-object v0, p0, Lcom/powervision/gcs/camera/w4/CameraHelper;->mCmdChannelWIFI:Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;

    :cond_0
    return-void
.end method

.method private connectToCmdChannel()Z
    .locals 1

    .line 133
    invoke-direct {p0}, Lcom/powervision/gcs/camera/w4/CameraHelper;->connectToCmdWIFI()Z

    move-result v0

    return v0
.end method

.method private connectToCmdWIFI()Z
    .locals 2

    .line 121
    iget-boolean v0, p0, Lcom/powervision/gcs/camera/w4/CameraHelper;->hasWifiConnected:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/CameraHelper;->mCmdChannelWIFI:Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;

    invoke-virtual {v0}, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->connect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/CameraHelper;->mCmdChannelWIFI:Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;

    iput-object v0, p0, Lcom/powervision/gcs/camera/w4/CameraHelper;->mCmdChannel:Lcom/powervision/gcs/camera/w4/CmdChannel;

    .line 126
    iput-boolean v1, p0, Lcom/powervision/gcs/camera/w4/CameraHelper;->hasWifiConnected:Z

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/powervision/gcs/camera/w4/CameraHelper;
    .locals 2

    const-class v0, Lcom/powervision/gcs/camera/w4/CameraHelper;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/powervision/gcs/camera/w4/CameraHelper;->mHelper:Lcom/powervision/gcs/camera/w4/CameraHelper;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/powervision/gcs/camera/w4/CameraHelper;

    invoke-direct {v1}, Lcom/powervision/gcs/camera/w4/CameraHelper;-><init>()V

    sput-object v1, Lcom/powervision/gcs/camera/w4/CameraHelper;->mHelper:Lcom/powervision/gcs/camera/w4/CameraHelper;

    .line 43
    :cond_0
    sget-object v1, Lcom/powervision/gcs/camera/w4/CameraHelper;->mHelper:Lcom/powervision/gcs/camera/w4/CameraHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic lambda$YFcRwN5WYTt01PtDyp0Sd0d8mDI(Lcom/powervision/gcs/camera/w4/CameraHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/powervision/gcs/camera/w4/CameraHelper;->connectToCmdChannel()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addChannelListener(Lcom/powervision/gcs/camera/w4/IChannelListener;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/CameraHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/CameraHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public checkHeartbeat()V
    .locals 2

    .line 62
    sget-object v0, Lcom/powervision/gcs/camera/w4/CameraHelper;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/powervision/gcs/camera/w4/-$$Lambda$CameraHelper$tmNG8ADWwr5Jk3r6Sy544gCwO28;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/camera/w4/-$$Lambda$CameraHelper$tmNG8ADWwr5Jk3r6Sy544gCwO28;-><init>(Lcom/powervision/gcs/camera/w4/CameraHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$checkHeartbeat$0$CameraHelper()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/powervision/gcs/camera/w4/CameraHelper;->connectToCmdChannel()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/CameraHelper;->mCmdChannel:Lcom/powervision/gcs/camera/w4/CmdChannel;

    invoke-virtual {v0}, Lcom/powervision/gcs/camera/w4/CmdChannel;->checkHeartbeat()Z

    return-void
.end method

.method public onChannelEvent(I)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/CameraHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 141
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/camera/w4/IChannelListener;

    .line 142
    invoke-interface {v1, p1}, Lcom/powervision/gcs/camera/w4/IChannelListener;->onChannelEvent(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeChannelListener(Lcom/powervision/gcs/camera/w4/IChannelListener;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/CameraHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/powervision/gcs/camera/w4/CameraHelper;->hasWifiConnected:Z

    .line 72
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/CameraHelper;->mCmdChannelWIFI:Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;

    invoke-virtual {v0}, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->disconnect()V

    return-void
.end method

.method public setIp()V
    .locals 3

    .line 49
    :try_start_0
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/powervision/base/config/GlobalConfig;->W4_CAMERA_HTTP_SERVER_IP:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/4 v0, 0x0

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/camera/w4/CameraHelper;->mCmdChannelWIFI:Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x162e

    invoke-virtual {v1, v0, v2}, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->setIP(Ljava/lang/String;I)Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;

    return-void
.end method

.method public startToConnect()V
    .locals 2

    .line 58
    sget-object v0, Lcom/powervision/gcs/camera/w4/CameraHelper;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/powervision/gcs/camera/w4/-$$Lambda$CameraHelper$YFcRwN5WYTt01PtDyp0Sd0d8mDI;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/camera/w4/-$$Lambda$CameraHelper$YFcRwN5WYTt01PtDyp0Sd0d8mDI;-><init>(Lcom/powervision/gcs/camera/w4/CameraHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
