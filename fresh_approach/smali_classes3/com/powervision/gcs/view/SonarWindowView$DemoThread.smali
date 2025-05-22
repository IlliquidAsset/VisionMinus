.class Lcom/powervision/gcs/view/SonarWindowView$DemoThread;
.super Ljava/lang/Thread;
.source "SonarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/SonarWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DemoThread"
.end annotation


# instance fields
.field bf:Ljava/io/BufferedReader;

.field ism:Ljava/io/InputStream;

.field listener:Lcom/powervision/gcs/view/SonarWindowView$DemoStateListener;

.field rs:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1327
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/view/SonarWindowView$1;)V
    .locals 0

    .line 1327
    invoke-direct {p0}, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1345
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1347
    :try_start_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1350
    iget-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->rs:Landroid/content/res/Resources;

    sget v3, Lcom/powervision/gcs/R$raw;->sonar_demodata1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->ism:Ljava/io/InputStream;

    if-nez v2, :cond_0

    return-void

    .line 1356
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->ism:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->bf:Ljava/io/BufferedReader;

    if-nez v2, :cond_1

    return-void

    .line 1363
    :cond_1
    iget-object v3, p0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->ism:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->mark(I)V

    .line 1365
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->bf:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1367
    iget-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->bf:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->reset()V

    .line 1368
    iget-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->bf:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1371
    :cond_3
    sget-object v3, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->testUPTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readhistorytime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x13

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x16

    .line 1373
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    .line 1374
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1375
    array-length v3, v2

    if-lez v3, :cond_5

    .line 1376
    array-length v3, v2

    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 1377
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_6

    .line 1378
    aget-object v5, v2, v4

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v7, 0x7f

    if-le v5, v7, :cond_4

    const/16 v7, 0x100

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    sub-int/2addr v5, v7

    int-to-byte v5, v5

    .line 1379
    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move-object v3, v0

    :cond_6
    if-eqz v3, :cond_2

    .line 1383
    array-length v2, v3

    if-lez v2, :cond_2

    .line 1384
    iget-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$DemoStateListener;

    if-eqz v2, :cond_7

    .line 1385
    iget-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$DemoStateListener;

    invoke-interface {v2, v3}, Lcom/powervision/gcs/view/SonarWindowView$DemoStateListener;->doWork([B)V

    :cond_7
    const-wide/16 v2, 0x19

    .line 1387
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 1348
    :cond_8
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->bf:Ljava/io/BufferedReader;

    if-eqz v1, :cond_9

    .line 1400
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->bf:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1402
    :cond_9
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->ism:Ljava/io/InputStream;

    if-eqz v1, :cond_a

    .line 1403
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->ism:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1405
    :cond_a
    iput-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->bf:Ljava/io/BufferedReader;

    .line 1406
    iput-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->ism:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_1
    nop

    .line 1392
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$DemoStateListener;

    if-eqz v0, :cond_b

    .line 1394
    invoke-interface {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView$DemoStateListener;->setNeedFreeMemory(Z)V

    .line 1395
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$DemoStateListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/SonarWindowView$DemoStateListener;->threadIsOver()V

    :catch_2
    :cond_b
    :goto_3
    return-void
.end method

.method public setDemoSateListener(Lcom/powervision/gcs/view/SonarWindowView$DemoStateListener;)V
    .locals 0

    .line 1333
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->listener:Lcom/powervision/gcs/view/SonarWindowView$DemoStateListener;

    return-void
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 0

    .line 1337
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$DemoThread;->rs:Landroid/content/res/Resources;

    return-void
.end method
