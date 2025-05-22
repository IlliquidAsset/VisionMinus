.class Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;
.super Ljava/lang/Thread;
.source "HttpUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/HttpUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeOutThread"
.end annotation


# instance fields
.field aCompleteData:Z

.field commonCallback:Lorg/xutils/common/Callback$CommonCallback;

.field currentUrl:Ljava/lang/String;

.field id:J

.field isIo:Z

.field lastId:J

.field lastTik:J

.field lastUrl:Ljava/lang/String;

.field repeatCount:I

.field final synthetic this$0:Lcom/powervision/gcs/usb2/HttpUsbManager;

.field tik:J


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/HttpUsbManager;Lorg/xutils/common/Callback$CommonCallback;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->this$0:Lcom/powervision/gcs/usb2/HttpUsbManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string p1, ""

    .line 215
    iput-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->currentUrl:Ljava/lang/String;

    .line 216
    iput-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->lastUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 217
    iput p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->repeatCount:I

    const/4 p1, 0x0

    .line 219
    iput-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->commonCallback:Lorg/xutils/common/Callback$CommonCallback;

    const/4 p1, 0x1

    .line 228
    iput-boolean p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->aCompleteData:Z

    .line 222
    iput-object p2, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->commonCallback:Lorg/xutils/common/Callback$CommonCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;)Z
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->isaCompleteData()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;ZLjava/lang/String;)V
    .locals 0

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->startARequest(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->receiveOneData()V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;IZZ)V
    .locals 0

    .line 208
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->completeARequest(IZZ)V

    return-void
.end method

.method private completeARequest(IZZ)V
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "completeARequest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqHttp"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 258
    iput-boolean p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->aCompleteData:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 270
    iget-object p2, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->commonCallback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz p2, :cond_2

    const/4 p3, 0x0

    .line 271
    invoke-interface {p2, p1, p3}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 274
    :cond_1
    iget-object p2, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->commonCallback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz p2, :cond_2

    .line 275
    invoke-interface {p2, p1}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private isaCompleteData()Z
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->aCompleteData:Z

    return v0
.end method

.method private receiveOneData()V
    .locals 4

    .line 231
    iget-wide v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->tik:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->tik:J

    return-void
.end method

.method private startARequest(ZLjava/lang/String;)V
    .locals 4

    const-string v0, "lzqHttp"

    const-string v1, "startARequest"

    .line 235
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->aCompleteData:Z

    .line 237
    iget-wide v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->id:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->id:J

    .line 238
    iput-boolean p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->isIo:Z

    if-eqz p1, :cond_0

    .line 240
    iput-object p2, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->currentUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public failedHonestly()V
    .locals 3

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->aCompleteData:Z

    const-string v1, "lzqHttp"

    const-string v2, "failedHonestly"

    .line 250
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->get()Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->cancelCurrentDownloadTask(Z)V

    return-void
.end method

.method public run()V
    .locals 6

    .line 287
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 289
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->lastId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "  id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " lastTik: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->lastTik:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " tik:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->tik:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqHttp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x4b0

    .line 291
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 296
    :goto_1
    iget-boolean v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->aCompleteData:Z

    if-nez v0, :cond_5

    .line 297
    iget-wide v2, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->lastId:J

    iget-wide v4, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->id:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const-string v0, "\u65b0\u6570\u636e"

    .line 299
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 303
    :cond_0
    iget-wide v2, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->tik:J

    iget-wide v4, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->lastTik:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!!!!!!!!!!!!!!!\u8d85\u65f6\u4e86!!!!! repeatCount:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->repeatCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastUrl:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->lastUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentUrl:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-boolean v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->isIo:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->lastUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->repeatCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->repeatCount:I

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 315
    iput v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->repeatCount:I

    .line 317
    :goto_2
    iget v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->repeatCount:I

    const/4 v4, 0x4

    if-le v0, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, -0x1

    .line 320
    :goto_3
    iget-object v4, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->currentUrl:Ljava/lang/String;

    iput-object v4, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->lastUrl:Ljava/lang/String;

    goto :goto_4

    :cond_3
    const/4 v0, -0x1

    .line 322
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after repeatCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->repeatCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_4

    .line 324
    iget-boolean v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->isIo:Z

    invoke-direct {p0, v3, v0, v3}, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->completeARequest(IZZ)V

    goto :goto_5

    .line 326
    :cond_4
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->failedHonestly()V

    .line 333
    :cond_5
    :goto_5
    iget-wide v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->id:J

    iput-wide v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->lastId:J

    .line 334
    iget-wide v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->tik:J

    iput-wide v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$TimeOutThread;->lastTik:J

    goto/16 :goto_0
.end method
