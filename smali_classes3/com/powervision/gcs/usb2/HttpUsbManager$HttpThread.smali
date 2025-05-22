.class Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;
.super Ljava/lang/Thread;
.source "HttpUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/HttpUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpThread"
.end annotation


# instance fields
.field private fastMode:Z

.field httpHandle:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpHandle;

.field public lock:Ljava/lang/Object;

.field pool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/powervision/gcs/usb2/Msg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 870
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 872
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->pool:Ljava/util/LinkedList;

    .line 873
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 883
    iput-boolean v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->fastMode:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/usb2/HttpUsbManager$1;)V
    .locals 0

    .line 870
    invoke-direct {p0}, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;Z)V
    .locals 0

    .line 870
    invoke-direct {p0, p1}, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->setFastMode(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;Lcom/powervision/gcs/usb2/HttpUsbManager$HttpHandle;)V
    .locals 0

    .line 870
    invoke-direct {p0, p1}, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->setHttpHandle(Lcom/powervision/gcs/usb2/HttpUsbManager$HttpHandle;)V

    return-void
.end method

.method private setFastMode(Z)V
    .locals 0

    .line 880
    iput-boolean p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->fastMode:Z

    return-void
.end method

.method private setHttpHandle(Lcom/powervision/gcs/usb2/HttpUsbManager$HttpHandle;)V
    .locals 0

    .line 893
    iput-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->httpHandle:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpHandle;

    return-void
.end method


# virtual methods
.method public addData([BI)V
    .locals 4

    .line 887
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->pool:Ljava/util/LinkedList;

    monitor-enter v0

    .line 888
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->pool:Ljava/util/LinkedList;

    new-instance v2, Lcom/powervision/gcs/usb2/Msg;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, p2}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 889
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isFastMode()Z
    .locals 1

    .line 876
    iget-boolean v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->fastMode:Z

    return v0
.end method

.method public lockThis()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 945
    iget-boolean v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->fastMode:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 946
    invoke-static {v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->sleep(J)V

    goto :goto_0

    .line 948
    :cond_0
    monitor-enter p0

    .line 949
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 950
    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyThis()V
    .locals 1

    .line 955
    monitor-enter p0

    .line 956
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 957
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .line 899
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 904
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->fastMode:Z

    if-eqz v0, :cond_4

    .line 905
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->pool:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->pool:Ljava/util/LinkedList;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :try_start_1
    iget-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->httpHandle:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpHandle;

    if-eqz v1, :cond_2

    .line 908
    iget-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->httpHandle:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpHandle;

    iget-object v2, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->pool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/usb2/Msg;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpHandle;->work(Lcom/powervision/gcs/usb2/Msg;)V

    .line 910
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
    :try_start_2
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->pool:Ljava/util/LinkedList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 912
    :cond_3
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->lockThis()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 910
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :cond_4
    const/4 v0, 0x0

    .line 920
    iget-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->pool:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 921
    :try_start_5
    iget-object v2, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->pool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 922
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 923
    iget-object v2, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->pool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 925
    :cond_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 927
    :try_start_6
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 928
    iget-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->httpHandle:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpHandle;

    if-eqz v1, :cond_6

    .line 929
    iget-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->httpHandle:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpHandle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/usb2/Msg;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpHandle;->work(Lcom/powervision/gcs/usb2/Msg;)V

    goto :goto_2

    .line 932
    :cond_7
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->pool:Ljava/util/LinkedList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 933
    :cond_8
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->lockThis()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 925
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 938
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method
