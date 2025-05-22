.class public Lcom/powervision/gcs/usb2/HttpUsbManager;
.super Ljava/lang/Object;
.source "HttpUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;,
        Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;,
        Lcom/powervision/gcs/usb2/HttpUsbManager$HttpHandle;,
        Lcom/powervision/gcs/usb2/HttpUsbManager$Ap03MediaRequestTimeoutCallback;,
        Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;,
        Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;
    }
.end annotation


# static fields
.field public static final HOST:Ljava/lang/String; = "192.168.1.10"

.field private static final TAG:Ljava/lang/String; = "HttpUsbManager"

.field private static h:Lcom/powervision/gcs/usb2/HttpUsbManager;


# instance fields
.field public ap03MediaRequestTimeoutCallback:Lcom/powervision/gcs/usb2/HttpUsbManager$Ap03MediaRequestTimeoutCallback;

.field private buffer:Ljava/nio/ByteBuffer;

.field public commonCallback:Lorg/xutils/common/Callback$CommonCallback;

.field private currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

.field private httpHandle:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpHandle;

.field httpThread:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;

.field onSendStartCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private split_rn:[B

.field private standardHead:Ljava/lang/String;

.field private timeOutThread:Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;

.field urlHead:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->buffer:Ljava/nio/ByteBuffer;

    const-string v1, "\r\n\r\n"

    .line 72
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->split_rn:[B

    const-string v1, "HTTP/"

    .line 131
    iput-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->standardHead:Ljava/lang/String;

    .line 346
    iput-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->ap03MediaRequestTimeoutCallback:Lcom/powervision/gcs/usb2/HttpUsbManager$Ap03MediaRequestTimeoutCallback;

    .line 356
    iput-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->commonCallback:Lorg/xutils/common/Callback$CommonCallback;

    .line 387
    iput-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    .line 388
    iput-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->timeOutThread:Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;

    const-string v1, "http://192.168.1.10/"

    .line 661
    iput-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->urlHead:Ljava/lang/String;

    .line 777
    new-instance v1, Lcom/powervision/gcs/usb2/HttpUsbManager$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/usb2/HttpUsbManager$1;-><init>(Lcom/powervision/gcs/usb2/HttpUsbManager;)V

    iput-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->httpHandle:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpHandle;

    .line 846
    iput-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->httpThread:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;

    .line 961
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->onSendStartCallBacks:Ljava/util/ArrayList;

    .line 56
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->buffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/high16 v0, 0x1000000

    .line 57
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->buffer:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method static synthetic access$400(Lcom/powervision/gcs/usb2/HttpUsbManager;[B)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->fakeNewReceive([B)V

    return-void
.end method

.method private addADateToBuffer([B)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 182
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 616
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 617
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 618
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 619
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 620
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 622
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private clearBuffer()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method private dispatchMessage(Ljava/lang/String;)V
    .locals 1

    .line 596
    invoke-static {}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->get()Lcom/powervision/localhttp/AP03CameraAOAUtils;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->receiveMessage(Ljava/lang/String;)V

    return-void
.end method

.method private fakeNewReceive([B)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/usb2/HttpUsbManager;->initTimeOutThread()V

    .line 395
    iget-object v2, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->timeOutThread:Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;

    invoke-static {v2}, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->access$200(Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;)V

    .line 397
    invoke-direct/range {p0 .. p1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->isStandardHttpHead([B)Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "lzqHttp"

    if-eqz v2, :cond_b

    .line 399
    invoke-direct/range {p0 .. p0}, Lcom/powervision/gcs/usb2/HttpUsbManager;->clearBuffer()V

    .line 402
    invoke-direct/range {p0 .. p1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->parseTheHead([B)I

    move-result v2

    .line 403
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseTheHead headEnd :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, -0x1

    if-ne v2, v10, :cond_2

    const-string v2, "\u4e0d\u662f\u6b63\u5e38\u7684\u5934\u90e8"

    .line 406
    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5934\u90e8\u6570\u636e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    array-length v2, v1

    const/16 v3, 0x1e

    if-le v2, v3, :cond_1

    .line 409
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x14

    invoke-direct {v2, v1, v7, v3}, Ljava/lang/String;-><init>([BII)V

    const-string v3, "404"

    .line 410
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "\u5305\u542b404 \u76f4\u63a5\u6254\u4e86"

    .line 413
    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v1, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->timeOutThread:Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;

    invoke-static {v1, v8, v7, v8}, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->access$300(Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;IZZ)V

    goto/16 :goto_2

    :cond_0
    const-string v2, " \u5148\u6254\u5230\u7f13\u51b2\u533a"

    .line 416
    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-direct/range {p0 .. p1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->addADateToBuffer([B)V

    goto/16 :goto_2

    .line 420
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->addADateToBuffer([B)V

    goto/16 :goto_2

    :cond_2
    const-string v10, "\u662f\u6b63\u5e38\u7684\u5934\u90e8 \u6e05\u7a7a\u7f13\u51b2\u533a"

    .line 424
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-direct/range {p0 .. p0}, Lcom/powervision/gcs/usb2/HttpUsbManager;->clearBuffer()V

    .line 428
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v1, v7, v2}, Ljava/lang/String;-><init>([BII)V

    .line 429
    invoke-direct {v0, v10}, Lcom/powervision/gcs/usb2/HttpUsbManager;->parseTheContentInfo(Ljava/lang/String;)[J

    move-result-object v11

    .line 430
    aget-wide v12, v11, v7

    cmp-long v14, v12, v5

    if-nez v14, :cond_3

    aget-wide v12, v11, v8

    cmp-long v14, v12, v5

    if-nez v14, :cond_3

    const-string v12, "\u6570\u636e\u662f\u9519\u7684 \u8981\u6254\u6389"

    .line 432
    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v12, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->timeOutThread:Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;

    invoke-static {v12, v8, v7, v8}, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->access$300(Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;IZZ)V

    .line 436
    :cond_3
    aget-wide v12, v11, v7

    .line 437
    new-instance v14, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    invoke-direct {v14, v0}, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;-><init>(Lcom/powervision/gcs/usb2/HttpUsbManager;)V

    iput-object v14, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    .line 438
    iput-wide v12, v14, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->contentLen:J

    .line 439
    iget-object v14, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    aget-wide v15, v11, v8

    const-wide/16 v17, 0x0

    cmp-long v11, v15, v17

    if-nez v11, :cond_4

    const/4 v11, 0x1

    goto :goto_0

    :cond_4
    const/4 v11, 0x0

    :goto_0
    iput-boolean v11, v14, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->isIO:Z

    .line 440
    iget-object v11, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    int-to-long v14, v2

    iput-wide v14, v11, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->headEnd:J

    .line 442
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u89e3\u6790\u4e89\u53d6 isIO\uff1a"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    iget-boolean v14, v14, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->isIO:Z

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u89e3\u6790\u4e89\u53d6 contentLen\uff1a"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    iget-wide v14, v14, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->contentLen:J

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v11, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    iget-boolean v11, v11, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->isIO:Z

    if-eqz v11, :cond_6

    .line 452
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->get()Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->setContentLength(J)V

    const-string v3, "\u5982\u679c\u662f\u6d41 \u76f4\u63a5\u53d1\u51fa\u53bb"

    .line 453
    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->get()Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    array-length v6, v1

    invoke-static {v1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->receiveIO([B)V

    .line 455
    iget-object v3, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    array-length v5, v1

    sub-int/2addr v5, v2

    sub-int/2addr v5, v8

    int-to-long v5, v5

    iput-wide v5, v3, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->receiveLen:J

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "src len\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "head end\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content end\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v1, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    iget-wide v1, v1, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->receiveLen:J

    iget-object v3, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    iget-wide v5, v3, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->contentLen:J

    cmp-long v3, v1, v5

    if-nez v3, :cond_5

    const-string v1, "\u6b63\u597d\u63a5\u6536\u5b8c\u4e86"

    .line 462
    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iput-object v4, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    .line 465
    iget-object v1, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->timeOutThread:Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;

    invoke-static {v1, v8, v8, v7}, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->access$300(Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;IZZ)V

    goto/16 :goto_2

    .line 467
    :cond_5
    iget-object v1, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    iget-wide v1, v1, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->receiveLen:J

    iget-object v3, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    iget-wide v5, v3, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->contentLen:J

    cmp-long v3, v1, v5

    if-lez v3, :cond_15

    const-string v1, "\u9519\u8bef\u7684\u6d41\u6570\u636e"

    .line 468
    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v1, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->timeOutThread:Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;

    const/4 v2, 0x2

    invoke-static {v1, v2, v8, v8}, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->access$300(Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;IZZ)V

    .line 470
    iput-object v4, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    goto/16 :goto_2

    .line 475
    :cond_6
    iget-object v10, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    iget-wide v10, v10, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->contentLen:J

    cmp-long v12, v10, v5

    if-eqz v12, :cond_9

    .line 477
    iget-object v3, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    array-length v5, v1

    sub-int/2addr v5, v2

    sub-int/2addr v5, v8

    int-to-long v5, v5

    iput-wide v5, v3, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->receiveLen:J

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  currentHttpRespone.receiveLen: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    iget-wide v5, v5, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->receiveLen:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v3, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    iget-wide v5, v3, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->contentLen:J

    iget-object v3, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    iget-wide v10, v3, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->receiveLen:J

    cmp-long v3, v5, v10

    if-gez v3, :cond_7

    const-string v1, "\u6709\u95ee\u9898\u7684\u6570\u636e \u76f4\u63a5\u6254\u4e86"

    .line 482
    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-direct/range {p0 .. p0}, Lcom/powervision/gcs/usb2/HttpUsbManager;->clearBuffer()V

    .line 484
    iget-object v1, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->timeOutThread:Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;

    const/4 v2, 0x3

    invoke-static {v1, v2, v7, v8}, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->access$300(Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;IZZ)V

    goto/16 :goto_2

    .line 485
    :cond_7
    iget-object v3, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    iget-wide v5, v3, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->contentLen:J

    iget-object v3, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    iget-wide v10, v3, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->receiveLen:J

    cmp-long v3, v5, v10

    if-nez v3, :cond_8

    const-string v3, "lzqHttp_1"

    const-string v5, "\u6b63\u597d\u63a5\u6536\u4e00\u4e2aGSON"

    .line 487
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iput-object v4, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    .line 489
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    array-length v5, v1

    sub-int/2addr v5, v2

    sub-int/2addr v5, v8

    invoke-direct {v3, v1, v4, v5}, Ljava/lang/String;-><init>([BII)V

    .line 490
    invoke-direct {v0, v3}, Lcom/powervision/gcs/usb2/HttpUsbManager;->receiveJson(Ljava/lang/String;)V

    .line 491
    iget-object v1, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->timeOutThread:Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;

    const/4 v2, 0x4

    invoke-static {v1, v2, v7, v7}, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->access$300(Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;IZZ)V

    goto/16 :goto_2

    :cond_8
    const-string v2, "\u65ad\u5305 \u6254\u5230\u7f13\u51b2\u533a"

    .line 495
    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-direct/range {p0 .. p1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->addADateToBuffer([B)V

    goto/16 :goto_2

    .line 499
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e0d\u662f\u6d41:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-direct/range {p0 .. p1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->jsonEnd([B)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 503
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    array-length v6, v1

    sub-int/2addr v6, v2

    sub-int/2addr v6, v8

    invoke-direct {v4, v1, v5, v6}, Ljava/lang/String;-><init>([BII)V

    .line 505
    invoke-direct {v0, v4}, Lcom/powervision/gcs/usb2/HttpUsbManager;->receiveJson(Ljava/lang/String;)V

    .line 506
    iget-object v1, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->timeOutThread:Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;

    invoke-static {v1, v3, v7, v7}, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->access$300(Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;IZZ)V

    goto/16 :goto_2

    :cond_a
    const-string v2, "jsonEnd false \u6254\u5230\u7f13\u51b2\u533a"

    .line 510
    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-direct/range {p0 .. p1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->addADateToBuffer([B)V

    goto/16 :goto_2

    .line 518
    :cond_b
    iget-object v2, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    if-eqz v2, :cond_e

    iget-boolean v2, v2, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->isIO:Z

    if-eqz v2, :cond_e

    .line 519
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->get()Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->receiveIO([B)V

    .line 521
    iget-object v2, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    iget-wide v3, v2, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->receiveLen:J

    array-length v1, v1

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->receiveLen:J

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "txt---data---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    iget-wide v2, v2, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->receiveLen:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v1, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    iget-wide v1, v1, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->receiveLen:J

    iget-object v3, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    iget-wide v3, v3, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->contentLen:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_d

    .line 525
    iget-object v1, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->commonCallback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v1, :cond_c

    const-string v2, "1"

    .line 526
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V

    .line 528
    :cond_c
    iget-object v1, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->timeOutThread:Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;

    const/4 v2, 0x6

    invoke-static {v1, v2, v8, v7}, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->access$300(Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;IZZ)V

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "txt---data--1--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    iget-wide v2, v2, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->receiveLen:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 531
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "txt---data--2--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    iget-wide v2, v2, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->receiveLen:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 538
    :cond_e
    iget-object v2, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    if-nez v2, :cond_11

    .line 540
    invoke-direct/range {p0 .. p0}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getDatas()[B

    move-result-object v2

    if-eqz v2, :cond_f

    .line 541
    array-length v4, v2

    if-lez v4, :cond_f

    const-string v3, "\u7f13\u51b2\u533a\u91cc\u6709\u6b63\u5e38\u7684\u6570\u636e  \u62fc\u63a5\u4e00\u8d77"

    .line 543
    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-static {v2, v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->concat([B[B)[B

    move-result-object v1

    .line 545
    invoke-direct {v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->fakeNewReceive([B)V

    goto/16 :goto_2

    .line 548
    :cond_f
    array-length v2, v1

    if-ge v2, v3, :cond_10

    iget-object v2, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->standardHead:Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "\u5982\u679c\u662fHTTP\u5934\u4e0d\u5168\u7684\u8bdd \u73b0\u6254\u8fdb\u7f13\u51b2\u533a \u8fd8\u6709\u7684\u6551"

    .line 550
    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-direct/range {p0 .. p1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->addADateToBuffer([B)V

    goto :goto_2

    :cond_10
    const-string v1, "\u91ce\u6570\u636e\u76f4\u63a5\u6254\u4e86"

    .line 554
    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 562
    :cond_11
    iget-wide v2, v2, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->headEnd:J

    cmp-long v7, v2, v5

    if-eqz v7, :cond_14

    .line 564
    invoke-direct/range {p0 .. p0}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getDatas()[B

    move-result-object v2

    if-eqz v2, :cond_13

    .line 565
    array-length v3, v2

    if-nez v3, :cond_12

    goto :goto_1

    .line 574
    :cond_12
    invoke-static {v2, v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->concat([B[B)[B

    move-result-object v1

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u66fe\u7ecf\u89e3\u51fa\u8fc7\u5934 \u73b0\u5728\u6254\u5230\u7f13\u51b2\u533a:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-direct {v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->fakeNewReceive([B)V

    goto :goto_2

    .line 567
    :cond_13
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u91ce\u6570\u636e\u76f4\u63a5\u6254\u4e86---"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-direct/range {p0 .. p0}, Lcom/powervision/gcs/usb2/HttpUsbManager;->clearBuffer()V

    .line 569
    iput-object v4, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    goto :goto_2

    .line 579
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json---data--2--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->currentHttpRespone:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;

    iget-wide v2, v2, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->headEnd:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_2
    return-void
.end method

.method private getDatas()[B
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 198
    new-array v1, v0, [B

    .line 199
    iget-object v2, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->buffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 202
    iget-object v2, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v1
.end method

.method public static getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;
    .locals 1

    .line 63
    sget-object v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->h:Lcom/powervision/gcs/usb2/HttpUsbManager;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/powervision/gcs/usb2/HttpUsbManager;

    invoke-direct {v0}, Lcom/powervision/gcs/usb2/HttpUsbManager;-><init>()V

    sput-object v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->h:Lcom/powervision/gcs/usb2/HttpUsbManager;

    .line 66
    :cond_0
    sget-object v0, Lcom/powervision/gcs/usb2/HttpUsbManager;->h:Lcom/powervision/gcs/usb2/HttpUsbManager;

    return-object v0
.end method

.method public static hexStringToByte(Ljava/lang/String;)[B
    .locals 5

    .line 632
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 633
    new-array v1, v0, [B

    .line 634
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 637
    aget-char v4, p0, v3

    invoke-static {v4}, Lcom/powervision/gcs/usb2/HttpUsbManager;->toByte(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-char v3, p0, v3

    invoke-static {v3}, Lcom/powervision/gcs/usb2/HttpUsbManager;->toByte(C)I

    move-result v3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private isStandardHttpHead([B)Z
    .locals 3

    .line 160
    array-length v0, p1

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 161
    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 162
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iget-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->standardHead:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    return v2
.end method

.method private jsonEnd([B)Z
    .locals 3

    .line 87
    array-length v0, p1

    add-int/lit8 v0, v0, -0x3

    aget-byte v0, p1, v0

    const-string v1, "}"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, p1, v0

    const-string v1, "\r"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte p1, p1, v0

    const-string v0, "\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aget-byte v0, v0, v2

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method private parseTheContentInfo(Ljava/lang/String;)[J
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 100
    fill-array-data v0, :array_0

    const-string v1, "\r\n"

    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 102
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 104
    aget-object v3, p1, v2

    const-string v4, "Content-Type"

    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, ":"

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 106
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 107
    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lzqHttp"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ima"

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "video/m"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "video/quicktime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, " parseTheContentInfo \u4e0d\u662f\u6d41 "

    .line 113
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x1

    aput-wide v3, v0, v6

    goto :goto_2

    :cond_1
    :goto_1
    const-string v3, " parseTheContentInfo \u662f\u6d41 "

    .line 110
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x0

    aput-wide v3, v0, v6

    goto :goto_2

    :cond_2
    const-string v4, "Content-Length"

    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 118
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 119
    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 121
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v0, v1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v0

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private parseTheHead([B)I
    .locals 6

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "split_rn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->split_rn:[B

    const-string v2, " "

    invoke-static {v1, v2}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqHttp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "src:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v2}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    array-length v0, p1

    const/16 v1, 0x32

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 142
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x3

    if-ge v1, v2, :cond_1

    .line 146
    aget-byte v2, p1, v1

    iget-object v3, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->split_rn:[B

    aget-byte v4, v3, v0

    if-ne v2, v4, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    const/4 v4, 0x1

    aget-byte v5, v3, v4

    if-ne v2, v5, :cond_0

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, p1, v2

    aget-byte v5, v3, v0

    if-ne v2, v5, :cond_0

    add-int/lit8 v2, v1, 0x3

    aget-byte v5, p1, v2

    aget-byte v3, v3, v4

    if-ne v5, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    return v2
.end method

.method private receiveJson(Ljava/lang/String;)V
    .locals 2

    .line 600
    sget v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->DEVICE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 601
    invoke-direct {p0, p1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->dispatchMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :cond_0
    sget v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->DEVICE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 603
    invoke-static {}, Lcom/powervision/localhttp/PVW4CameraAOAUtils;->get()Lcom/powervision/localhttp/PVW4CameraAOAUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/PVW4CameraAOAUtils;->receiveMessage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static toByte(C)I
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 643
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method


# virtual methods
.method public addANewRequest(ZLjava/lang/String;)V
    .locals 2

    .line 380
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/HttpUsbManager;->initTimeOutThread()V

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addANewRequest isaCompleteData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->timeOutThread:Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;

    invoke-static {v1}, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->access$000(Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqHttp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->timeOutThread:Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->access$000(Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->timeOutThread:Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;

    invoke-static {v0, p1, p2}, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->access$100(Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addOnSendStartCallBack(Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;)V
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->onSendStartCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->onSendStartCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public changeToRecord()V
    .locals 0

    return-void
.end method

.method public changeToShot()V
    .locals 0

    return-void
.end method

.method public get(Ljava/lang/String;)V
    .locals 1

    .line 649
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->urlHead:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cgi-bin/hi3559/photo.cgi?&-type=common&-cmd=start"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "192.168.1.10"

    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public getDownLoad(Ljava/lang/String;)V
    .locals 2

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->urlHead:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "192.168.1.10"

    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 655
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2760

    invoke-static {v1, v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->intToByteArray(II)[B

    move-result-object v0

    .line 656
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->concat([B[B)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->send([B)V

    return-void
.end method

.method public getDownloadPath(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET "

    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " HTTP/1.1\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Host: "

    .line 1025
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Range: "

    .line 1030
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "bytes="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "-\r\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMediaIndex_0()V
    .locals 7

    .line 682
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->urlHead:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cgi-bin/hi3559/getfilelist.cgi?getfilelist&-start=%1$d&-end=%2$d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "192.168.1.10"

    .line 683
    invoke-virtual {p0, v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2760

    invoke-static {v2, v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->intToByteArray(II)[B

    move-result-object v1

    .line 685
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->concat([B[B)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->send([B)V

    return-void
.end method

.method public getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET "

    .line 747
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " HTTP/1.1\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Host: "

    .line 755
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "lzqHttp"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initTimeOutThread()V
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->timeOutThread:Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;

    if-nez v0, :cond_1

    const-string v0, "lzqHttp"

    const-string v1, "initTimeOutThread"

    .line 369
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-class v0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->timeOutThread:Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;

    if-nez v1, :cond_0

    .line 372
    new-instance v1, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;

    iget-object v2, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->commonCallback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-direct {v1, p0, v2}, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;-><init>(Lcom/powervision/gcs/usb2/HttpUsbManager;Lorg/xutils/common/Callback$CommonCallback;)V

    iput-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->timeOutThread:Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;

    .line 373
    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->start()V

    .line 375
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public postDownloadRequest(Ljava/lang/String;J)V
    .locals 3

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->urlHead:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "192.168.1.10"

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getDownloadPath(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->urlHead:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HttpUsbManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x2760

    invoke-static {p2, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->intToByteArray(II)[B

    move-result-object p1

    .line 1000
    invoke-static {}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/gcs/usb2/HttpUsbManager;->setHighSpeed()V

    .line 1001
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/gcs/usb2/GcsUsbManager;->concat([B[B)[B

    move-result-object p1

    .line 1002
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u8bf7\u6c42:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "lzqHttp"

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->send([B)V

    return-void
.end method

.method public receivePacket([BI)V
    .locals 2

    .line 849
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->httpThread:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;

    if-nez v0, :cond_0

    .line 850
    new-instance v0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;-><init>(Lcom/powervision/gcs/usb2/HttpUsbManager$1;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->httpThread:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;

    .line 851
    iget-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->httpHandle:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpHandle;

    invoke-static {v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->access$700(Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;Lcom/powervision/gcs/usb2/HttpUsbManager$HttpHandle;)V

    .line 852
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->httpThread:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->start()V

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->httpThread:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;

    invoke-virtual {v0, p1, p2}, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->addData([BI)V

    .line 856
    sget-object p1, Lcom/powervision/gcs/usb2/HttpUsbManager$2;->$SwitchMap$java$lang$Thread$State:[I

    iget-object p2, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->httpThread:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;

    invoke-virtual {p2}, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->getState()Ljava/lang/Thread$State;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread$State;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 865
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->httpThread:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->notifyThis()V

    goto :goto_0

    .line 858
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->httpThread:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->notifyThis()V

    :goto_0
    return-void
.end method

.method public record()V
    .locals 2

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->urlHead:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cgi-bin/hi3559/photo.cgi?&-type=common&-cmd=start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "192.168.1.10"

    invoke-virtual {p0, v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public removeAp03MediaRequestTimeoutCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->ap03MediaRequestTimeoutCallback:Lcom/powervision/gcs/usb2/HttpUsbManager$Ap03MediaRequestTimeoutCallback;

    return-void
.end method

.method public removeOnSendStartCallBack(Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;)V
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->onSendStartCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->onSendStartCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requesAllCamera()V
    .locals 3

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->urlHead:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cgi-bin/hi3559/getallset.cgi?&-act=get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "192.168.1.10"

    invoke-virtual {p0, v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 714
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2760

    invoke-static {v2, v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->intToByteArray(II)[B

    move-result-object v1

    .line 715
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->concat([B[B)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->send([B)V

    return-void
.end method

.method public requestBodyVersion()V
    .locals 0

    return-void
.end method

.method public requestVersion()V
    .locals 0

    return-void
.end method

.method public setAp03MediaRequestTimeoutCallback(Lcom/powervision/gcs/usb2/HttpUsbManager$Ap03MediaRequestTimeoutCallback;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->ap03MediaRequestTimeoutCallback:Lcom/powervision/gcs/usb2/HttpUsbManager$Ap03MediaRequestTimeoutCallback;

    return-void
.end method

.method public setCommonCallback(Lorg/xutils/common/Callback$CommonCallback;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->commonCallback:Lorg/xutils/common/Callback$CommonCallback;

    return-void
.end method

.method public setHighSpeed()V
    .locals 2

    .line 834
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->httpThread:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 835
    invoke-static {v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->access$500(Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;Z)V

    :cond_0
    return-void
.end method

.method public setLowSpeed()V
    .locals 2

    .line 840
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->httpThread:Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 841
    invoke-static {v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;->access$500(Lcom/powervision/gcs/usb2/HttpUsbManager$HttpThread;Z)V

    :cond_0
    return-void
.end method

.method public shot()V
    .locals 3

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager;->urlHead:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cgi-bin/hi3559/setworkmode.cgi?&-act=set&-workmode=00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "192.168.1.10"

    invoke-virtual {p0, v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2760

    invoke-static {v2, v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->intToByteArray(II)[B

    move-result-object v1

    .line 678
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->concat([B[B)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->send([B)V

    return-void
.end method

.method public state()Ljava/lang/String;
    .locals 3

    const-string v0, "cgi-bin/hi3559/getsdstate.cgi?"

    const-string v1, "192.168.1.10"

    .line 667
    invoke-virtual {p0, v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2760

    invoke-static {v2, v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->intToByteArray(II)[B

    .line 669
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/usb2/GcsUsbManager;->send([B)V

    return-object v0
.end method

.method public testDownLoad()V
    .locals 3

    const-string v0, "sd/DCIM/100HISDV/.SING0016.JPG"

    const-wide/16 v1, 0x0

    .line 989
    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/gcs/usb2/HttpUsbManager;->postDownloadRequest(Ljava/lang/String;J)V

    return-void
.end method
