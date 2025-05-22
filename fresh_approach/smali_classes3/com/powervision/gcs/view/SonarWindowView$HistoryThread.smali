.class Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;
.super Ljava/lang/Thread;
.source "SonarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/SonarWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoryThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;
    }
.end annotation


# instance fields
.field private LOCK:Ljava/lang/Object;

.field bufferedReader:Ljava/io/BufferedReader;

.field limate:I

.field listener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

.field private needLock:Z

.field path:Ljava/lang/String;

.field public readSpeed:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1428
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1429
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1430
    iput-boolean v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->needLock:Z

    const-wide/16 v0, 0x2d

    .line 1432
    iput-wide v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->readSpeed:J

    const/16 v0, 0x32

    .line 1434
    iput v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->limate:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/view/SonarWindowView$1;)V
    .locals 0

    .line 1428
    invoke-direct {p0}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;-><init>()V

    return-void
.end method


# virtual methods
.method public inter()V
    .locals 0

    .line 1561
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->interrupt()V

    return-void
.end method

.method public lock()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1546
    iget-boolean v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->needLock:Z

    if-eqz v0, :cond_0

    .line 1547
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1548
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->LOCK:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 1549
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public needLockThread()V
    .locals 1

    const/4 v0, 0x1

    .line 1542
    iput-boolean v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->needLock:Z

    return-void
.end method

.method public notifyTheThread()V
    .locals 2

    const/4 v0, 0x0

    .line 1554
    iput-boolean v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->needLock:Z

    .line 1555
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1556
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->LOCK:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1557
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
    .locals 7

    .line 1443
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1446
    :try_start_0
    invoke-static {}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1451
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->bufferedReader:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_0

    .line 1454
    :try_start_1
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    .line 1455
    iput-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->bufferedReader:Ljava/io/BufferedReader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1457
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1460
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

    if-eqz v0, :cond_1

    .line 1461
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;->clearMemory()V

    .line 1462
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;->initTheHisoryMode()V

    :cond_1
    const/4 v0, 0x0

    .line 1466
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-lez v6, :cond_c

    .line 1470
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->bufferedReader:Ljava/io/BufferedReader;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_1
    move-exception v1

    .line 1472
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1476
    :goto_1
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1479
    iget v1, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->limate:I

    if-ge v0, v1, :cond_2

    .line 1480
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

    if-eqz v0, :cond_2

    .line 1481
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;->prepareHalfisDone()V

    .line 1513
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

    if-eqz v0, :cond_3

    .line 1514
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;->needReplay()V

    .line 1516
    :cond_3
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->bufferedReader:Ljava/io/BufferedReader;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v0, :cond_4

    .line 1518
    :try_start_5
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_2
    move-exception v0

    .line 1520
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1523
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->needLockThread()V

    .line 1524
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->lock()V

    goto :goto_4

    .line 1486
    :cond_5
    iget v2, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->limate:I

    if-ge v0, v2, :cond_6

    .line 1487
    iget-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

    if-eqz v2, :cond_7

    .line 1488
    iget-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

    invoke-interface {v2}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;->preparingBegin()V

    goto :goto_3

    .line 1491
    :cond_6
    iget-wide v2, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->readSpeed:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1494
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

    if-eqz v2, :cond_8

    .line 1495
    iget-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

    invoke-interface {v2, v1}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;->readHistory(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 1499
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

    if-eqz v1, :cond_9

    .line 1500
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

    invoke-interface {v1, v0}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;->updateTheLineCount(I)V

    .line 1502
    :cond_9
    iget v1, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->limate:I

    if-ne v0, v1, :cond_a

    .line 1504
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

    if-eqz v1, :cond_a

    .line 1505
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

    invoke-interface {v1}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;->preparingOver()V

    .line 1508
    :cond_a
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->lock()V

    goto :goto_1

    .line 1447
    :cond_b
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception v0

    .line 1534
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v0

    .line 1528
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1529
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

    if-eqz v0, :cond_c

    .line 1530
    invoke-interface {v0}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;->threadIsOver()V

    :cond_c
    :goto_4
    return-void
.end method

.method public setHistoryThreadListener(Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;)V
    .locals 0

    .line 1567
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

    return-void
.end method

.method public setLimate(I)V
    .locals 0

    .line 1572
    iput p1, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->limate:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1438
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->path:Ljava/lang/String;

    return-void
.end method
