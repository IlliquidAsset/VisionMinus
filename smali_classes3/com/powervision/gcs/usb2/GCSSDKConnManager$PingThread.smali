.class Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;
.super Ljava/lang/Thread;
.source "GCSSDKConnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/GCSSDKConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PingThread"
.end annotation


# instance fields
.field private lock:Ljava/lang/Object;

.field pingListener:Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 789
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 790
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;->lock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/usb2/GCSSDKConnManager$1;)V
    .locals 0

    .line 789
    invoke-direct {p0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;-><init>()V

    return-void
.end method


# virtual methods
.method public lockThis()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 824
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 825
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyThis()V
    .locals 2

    .line 829
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 830
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 831
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 2

    .line 800
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 803
    :try_start_0
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const-wide/16 v0, 0x190

    .line 809
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 810
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;->pingListener:Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingListener;

    invoke-interface {v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingListener;->work()V

    goto :goto_0

    .line 804
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 816
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method public setPingListener(Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingListener;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;->pingListener:Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingListener;

    return-void
.end method
