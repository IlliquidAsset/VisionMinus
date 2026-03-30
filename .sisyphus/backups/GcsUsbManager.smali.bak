.class public Lcom/powervision/gcs/usb2/GcsUsbManager;
.super Ljava/lang/Object;
.source "GcsUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;,
        Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;,
        Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;,
        Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;,
        Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "com.android.example.USB_PERMISSION"

.field private static final TAG:Ljava/lang/String; = "lzqUsb"

.field static currentTime:J

.field static gcsUsbManager:Lcom/powervision/gcs/usb2/GcsUsbManager;

.field static startTime:J

.field static totalLen:J

.field static www:J


# instance fields
.field final TRY_CONNECT:I

.field final TRY_SEND:I

.field private comThreadLock:Ljava/lang/Object;

.field public communicateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;

.field communicationThread:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;

.field private context:Landroid/content/Context;

.field countRange:I

.field private fdLock:Ljava/lang/Object;

.field private fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field h:I

.field private inLock:Ljava/lang/Object;

.field private inStream:Ljava/io/FileInputStream;

.field lastIsIn:Z

.field lastTime:J

.field public listener:Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;

.field mHandler:Landroid/os/Handler;

.field mHandlerThread:Landroid/os/HandlerThread;

.field private mUsbBroadcastReceiver:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;

.field msgTrigger:Lcom/powervision/gcs/usb2/MsgHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/powervision/gcs/usb2/MsgHandle<",
            "[B>;"
        }
    .end annotation
.end field

.field private outLock:Ljava/lang/Object;

.field private outStream:Ljava/io/FileOutputStream;

.field permissionIntent:Landroid/app/PendingIntent;

.field sendTask:Lcom/powervision/gcs/usb2/MsgTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/powervision/gcs/usb2/MsgTask<",
            "[B>;"
        }
    .end annotation
.end field

.field private sendThreadLock:Ljava/lang/Object;

.field start:J

.field usb2CountRange:I

.field private usbManager:Landroid/hardware/usb/UsbManager;

.field private usbStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->comThreadLock:Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendThreadLock:Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->fdLock:Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->inLock:Ljava/lang/Object;

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->outLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 335
    iput-wide v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->lastTime:J

    const/4 v2, 0x0

    .line 359
    iput-boolean v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->lastIsIn:Z

    .line 389
    iput-wide v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->start:J

    .line 435
    new-instance v0, Lcom/powervision/gcs/usb2/GcsUsbManager$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/usb2/GcsUsbManager$2;-><init>(Lcom/powervision/gcs/usb2/GcsUsbManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->listener:Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    const/4 v0, 0x7

    .line 610
    iput v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->countRange:I

    const/16 v0, 0x64

    .line 611
    iput v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usb2CountRange:I

    .line 612
    iput v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->TRY_CONNECT:I

    const/4 v0, 0x1

    .line 613
    iput v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->TRY_SEND:I

    const/4 v0, 0x0

    .line 625
    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->communicationThread:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;

    .line 817
    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendTask:Lcom/powervision/gcs/usb2/MsgTask;

    .line 819
    new-instance v0, Lcom/powervision/gcs/usb2/GcsUsbManager$4;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/usb2/GcsUsbManager$4;-><init>(Lcom/powervision/gcs/usb2/GcsUsbManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->msgTrigger:Lcom/powervision/gcs/usb2/MsgHandle;

    .line 879
    new-instance v0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/usb2/GcsUsbManager$5;-><init>(Lcom/powervision/gcs/usb2/GcsUsbManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->communicateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/usb2/GcsUsbManager;)Landroid/hardware/usb/UsbManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/lang/Object;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->inLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/io/FileInputStream;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->inStream:Ljava/io/FileInputStream;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/powervision/gcs/usb2/GcsUsbManager;Ljava/io/FileInputStream;)Ljava/io/FileInputStream;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->inStream:Ljava/io/FileInputStream;

    return-object p1
.end method

.method static synthetic access$200(Lcom/powervision/gcs/usb2/GcsUsbManager;Landroid/hardware/usb/UsbAccessory;)I
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->trySend(Landroid/hardware/usb/UsbAccessory;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/lang/Object;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->fdLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/gcs/usb2/GcsUsbManager;Landroid/hardware/usb/UsbAccessory;I)I
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/usb2/GcsUsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/lang/Object;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->outLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/io/FileOutputStream;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->outStream:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method static synthetic access$702(Lcom/powervision/gcs/usb2/GcsUsbManager;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->outStream:Ljava/io/FileOutputStream;

    return-object p1
.end method

.method static synthetic access$800(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/lang/Object;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->comThreadLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$900(Lcom/powervision/gcs/usb2/GcsUsbManager;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public static byteToInt2([B)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 258
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    shl-int/lit8 v1, v1, 0x8

    .line 260
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static concat([B[B)[B
    .locals 3

    .line 1533
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1534
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1535
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;
    .locals 1

    .line 140
    sget-object v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->gcsUsbManager:Lcom/powervision/gcs/usb2/GcsUsbManager;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-direct {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;-><init>()V

    sput-object v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->gcsUsbManager:Lcom/powervision/gcs/usb2/GcsUsbManager;

    .line 143
    :cond_0
    sget-object v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->gcsUsbManager:Lcom/powervision/gcs/usb2/GcsUsbManager;

    return-object v0
.end method

.method public static declared-synchronized intToByteArray(II)[B
    .locals 6

    const-class v0, Lcom/powervision/gcs/usb2/GcsUsbManager;

    monitor-enter v0

    const/4 v1, 0x5

    :try_start_0
    new-array v2, v1, [B

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v3, 0x1

    aput-byte p0, v2, v3

    shr-int/lit8 p0, p1, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v5, 0x3

    aput-byte p0, v2, v5

    and-int/lit16 p0, p1, 0xff

    int-to-byte p0, p0

    const/4 p1, 0x4

    aput-byte p0, v2, p1

    new-array p0, v1, [B

    aput-byte v4, p0, v4

    aput-byte v4, p0, v3

    const/4 v3, 0x2

    aput-byte v4, p0, v3

    aput-byte v4, p0, v5

    aput-byte v4, p0, p1

    const/16 p1, 0xa

    new-array p1, p1, [B

    .line 1518
    invoke-static {v2, v4, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1519
    invoke-static {p0, v4, p1, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1521
    invoke-static {v2, p0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->concat([B[B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1523
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private openAccessory(Landroid/hardware/usb/UsbAccessory;I)I
    .locals 4

    .line 684
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8c03\u7528 openAccessory "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "lzqUsb"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->isUSB2_CONFIRM()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x2

    if-eqz p1, :cond_4

    .line 690
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    return v1

    .line 695
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "haspermission  openAccessory serial "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    const-string v2, "4"

    .line 696
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 697
    sput v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->DEVICE_CONNECTION:I

    .line 698
    sput p2, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->DEVICE:I

    .line 699
    sput p2, Lcom/powervision/natives/connect/ConnectRemoteSDK;->currentDevice:I

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const-string v2, "DV03"

    .line 701
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    .line 702
    sput p1, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->DEVICE_CONNECTION:I

    goto :goto_0

    .line 704
    :cond_3
    sput v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->DEVICE_CONNECTION:I

    .line 706
    :goto_0
    sput v1, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->DEVICE:I

    .line 707
    sput v1, Lcom/powervision/natives/connect/ConnectRemoteSDK;->currentDevice:I

    :cond_4
    :goto_1
    return p2
.end method

.method private receive([BI)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->listener:Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;

    invoke-interface {v0, p1, p2}, Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;->onReceive([BI)V

    return-void
.end method

.method public static sendCancelLinkCommand(I)V
    .locals 4

    const/4 v0, 0x0

    .line 1591
    invoke-static {p0, v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->intToByteArray(II)[B

    move-result-object v1

    .line 1592
    new-instance v2, Ljava/lang/String;

    const-string v3, "C"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v0, v2, v0

    const/4 v2, 0x2

    aput-byte v0, v1, v2

    const/16 v0, 0x2760

    if-ne p0, v0, :cond_0

    const-string p0, "lzqHttp"

    const-string v0, "\u53d1\u9001Cancel-2"

    .line 1594
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->send([B)V

    return-void
.end method

.method public static sendStartLinkCommand(I)V
    .locals 4

    const/16 v0, 0x293a

    if-ne p0, v0, :cond_0

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7aef\u53e3\u53d1 \u8fde\u63a5 =====\u300b\u77f3\u6770 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqrtsp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x2ee2

    if-ne p0, v0, :cond_1

    const-string v0, "lzqw4_body"

    const-string v1, "\u53d1\u9001Start"

    .line 1581
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .line 1583
    invoke-static {p0, v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->intToByteArray(II)[B

    move-result-object p0

    const/4 v1, 0x2

    .line 1584
    new-instance v2, Ljava/lang/String;

    const-string v3, "S"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v0, v2, v0

    aput-byte v0, p0, v1

    .line 1587
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->send([B)V

    return-void
.end method

.method public static testReceive([B)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 458
    sget-wide v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->startTime:J

    .line 461
    :cond_0
    sget-wide v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->totalLen:J

    array-length p0, p0

    int-to-long v4, p0

    add-long/2addr v0, v4

    sput-wide v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->totalLen:J

    .line 462
    sget-wide v4, Lcom/powervision/gcs/usb2/GcsUsbManager;->currentTime:J

    sget-wide v6, Lcom/powervision/gcs/usb2/GcsUsbManager;->startTime:J

    sub-long v6, v4, v6

    long-to-double v6, v6

    cmp-long p0, v4, v2

    if-eqz p0, :cond_2

    long-to-double v0, v0

    div-double/2addr v0, v6

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    .line 465
    sget-wide v8, Lcom/powervision/gcs/usb2/GcsUsbManager;->www:J

    const-wide/16 v10, 0x6

    rem-long/2addr v8, v10

    cmp-long p0, v8, v2

    if-nez p0, :cond_1

    .line 466
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speed: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " \u65f6\u957f "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-double/2addr v6, v4

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "s  \u603b\u957f\u5ea6\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->totalLen:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "bytes"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "lzqspeed"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_1
    sget-wide v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->www:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->www:J

    .line 471
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->currentTime:J

    return-void
.end method

.method private trySend(Landroid/hardware/usb/UsbAccessory;)I
    .locals 5

    const-string v0, "lzqUsb"

    const-string v1, "try Send"

    .line 633
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->context:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 637
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 639
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    const-string v1, "lzqUsb"

    const-string v2, "fd \u521d\u59cb\u5316"

    .line 640
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->inLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 642
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->inStream:Ljava/io/FileInputStream;

    .line 643
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 645
    :try_start_2
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->outLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v2, "lzqUsb"

    const-string v3, "outstream \u521d\u59cb\u5316"

    .line 646
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->outStream:Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "lzqUsb"

    const-string v2, "outstream \u53d1\u9001"

    .line 649
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-static {}, Lcom/powervision/base/utils/LoopingManager;->get()Lcom/powervision/base/utils/LoopingManager;

    move-result-object p1

    const-string v2, "AOATIMEOUT"

    new-instance v3, Lcom/powervision/gcs/usb2/GcsUsbManager$3;

    invoke-direct {v3, p0}, Lcom/powervision/gcs/usb2/GcsUsbManager$3;-><init>(Lcom/powervision/gcs/usb2/GcsUsbManager;)V

    const/16 v4, 0xbb8

    invoke-virtual {p1, v2, v3, v4}, Lcom/powervision/base/utils/LoopingManager;->addAWork(Ljava/lang/String;Ljava/lang/Runnable;I)V

    .line 657
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->outStream:Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/String;

    const-string v3, "abcdefg"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/FileOutputStream;->write([B)V

    const-string p1, "lzqUsb"

    const-string v2, "outstream \u53d1\u9001\u5b8c\u6210"

    .line 658
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-static {}, Lcom/powervision/base/utils/LoopingManager;->get()Lcom/powervision/base/utils/LoopingManager;

    move-result-object p1

    const-string v2, "AOATIMEOUT"

    invoke-virtual {p1, v2}, Lcom/powervision/base/utils/LoopingManager;->removeWork(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->notify_onUsb2CanStarted()V

    const-string p1, "lzqUsb"

    const-string v2, "outstream \u53d1\u9001\u5b8c\u6210 ??????"

    .line 662
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_5
    const-string v2, "lzqUsb"

    const-string v3, "outstream \u53d1\u9001\u9519\u8bef"

    .line 665
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 669
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catchall_1
    move-exception p1

    .line 643
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    const-string p1, "lzqUsb"

    const-string v0, "SecurityException \u611f\u89c9\u8fd9\u4e2a\u6837\u5b50\u5c31\u662f\u51fa\u95ee\u9898\u4e86 \u4e0d\u7ba1"

    .line 672
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    :goto_1
    return v0
.end method


# virtual methods
.method public addUsbStateListener(Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;)V
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "lzqUsb"

    const-string v2, "GcsUsbManager addUsbStateListener:"

    .line 488
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public askAoaPermisison(Landroid/hardware/usb/UsbAccessory;)V
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->permissionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public closeAccessoryComm()V
    .locals 3

    const-string v0, "lzqUsb"

    const-string v1, "\u5173\u95ed closeAccessoryComm"

    .line 768
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->comThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->outStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "lzqUsb"

    const-string v2, "\u5173\u95ed outStream"

    .line 772
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->outStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 775
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 780
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    const-string v1, "lzqUsb"

    const-string v2, "\u5173\u95ed fileDescriptor"

    .line 782
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    .line 785
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 790
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->communicateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;

    invoke-interface {v1}, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;->setNeedRestart()V

    .line 791
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->communicationThread:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;

    if-eqz v1, :cond_2

    .line 792
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->communicationThread:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;->interrupt()V

    .line 798
    :cond_2
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendTask:Lcom/powervision/gcs/usb2/MsgTask;

    if-eqz v1, :cond_3

    const-string v1, "lzqUsb"

    const-string v2, "shutdown"

    .line 799
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendTask:Lcom/powervision/gcs/usb2/MsgTask;

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/MsgTask;->shutDown()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v1, "lzqUsb"

    const-string v2, "before join"

    .line 802
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendTask:Lcom/powervision/gcs/usb2/MsgTask;

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/MsgTask;->join()V

    const-string v1, "lzqUsb"

    const-string v2, "afger join"

    .line 804
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendTask:Lcom/powervision/gcs/usb2/MsgTask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/usb2/MsgTask;->setConnectHandle(Lcom/powervision/gcs/usb2/MsgHandle;)V

    .line 806
    iput-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendTask:Lcom/powervision/gcs/usb2/MsgTask;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v1

    .line 808
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 811
    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET "

    .line 1563
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " HTTP/1.1\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Host: "

    .line 1564
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "lzq"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usbReceiver init : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->context:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqUsb"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 161
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->context:Landroid/content/Context;

    const-string v0, "usb"

    .line 162
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.example.USB_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->permissionIntent:Landroid/app/PendingIntent;

    :cond_1
    return-void
.end method

.method public notify_Error()V
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 577
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 578
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;

    invoke-interface {v2}, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;->onError()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notify_didNotGetAccessory()V
    .locals 3

    .line 544
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 545
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 546
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;

    invoke-interface {v2}, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;->didNotGetAccessory()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notify_getAccessoryAndDoNotHasPermission()V
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 537
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 538
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;

    invoke-interface {v2}, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;->getAccessoryAndDoNotHasPermission()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notify_getAccessoryAndHasPermission()V
    .locals 3

    .line 528
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 529
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 530
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;

    invoke-interface {v2}, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;->getAccessoryAndHasPermission()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 532
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notify_needRestartActivity()V
    .locals 3

    .line 552
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 553
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;

    invoke-interface {v2}, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;->needRestartActivity()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 556
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notify_onUsb2CanStarted()V
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 513
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 514
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;

    invoke-interface {v2}, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;->onUsb2CanConnected()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notify_onUsb2Confirm()V
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 504
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 505
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;

    invoke-interface {v2}, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;->onUsb2Confirm()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "lzqUsb"

    const-string v2, "notify_onUsb2Confirm over"

    .line 507
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notify_onUsb2Disconnected()V
    .locals 3

    .line 520
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 521
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;

    invoke-interface {v2}, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;->onUsb2Disconnected()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notify_onUsbIn()V
    .locals 3

    .line 560
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 561
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 562
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;

    invoke-interface {v2}, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;->onUsbIn()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notify_onUsbOut()V
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 569
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 570
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;

    invoke-interface {v2}, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;->onUsbOut()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 572
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDes()V
    .locals 2

    .line 1605
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->mUsbBroadcastReceiver:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;

    if-eqz v0, :cond_0

    const-string v0, "lzqUsb"

    const-string v1, "usbReceiver onDes: "

    .line 1606
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->mUsbBroadcastReceiver:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/powervision/base/base/BaseApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1608
    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->mUsbBroadcastReceiver:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onUsbStateChanged(Z)V
    .locals 2

    .line 362
    iget-boolean v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->lastIsIn:Z

    if-eq v0, p1, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->closeAccessoryComm()V

    const-string v0, "lzqUsb"

    if-eqz p1, :cond_0

    const-string v1, "\u63d2\u5165 android.hardware.usb.action.USB_STATE"

    .line 365
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 366
    sput-boolean v0, Lcom/powervision/gcs/usb2/RtspUsbManager;->receiveable:Z

    .line 367
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->notify_onUsbIn()V

    goto :goto_0

    :cond_0
    const-string v1, "\u62d4\u51fa android.hardware.usb.action.USB_STATE"

    .line 369
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->notify_onUsbOut()V

    .line 372
    :goto_0
    iput-boolean p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->lastIsIn:Z

    :cond_1
    return-void
.end method

.method public register()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->mUsbBroadcastReceiver:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;

    if-nez v0, :cond_0

    const-string v0, "lzqUsb"

    const-string v1, "usbReceiver init: "

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;-><init>(Lcom/powervision/gcs/usb2/GcsUsbManager;Lcom/powervision/gcs/usb2/GcsUsbManager$1;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->mUsbBroadcastReceiver:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;

    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.example.USB_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_STATE"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->mUsbBroadcastReceiver:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/powervision/base/base/BaseApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "USB_AOA_CHECK"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 186
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 187
    new-instance v0, Lcom/powervision/gcs/usb2/GcsUsbManager$1;

    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/powervision/gcs/usb2/GcsUsbManager$1;-><init>(Lcom/powervision/gcs/usb2/GcsUsbManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->mHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public removeUsbStateLisener(Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;)V
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 496
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->usbStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 499
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public send([B)V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->msgTrigger:Lcom/powervision/gcs/usb2/MsgHandle;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0, p1}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->listener:Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;

    return-void
.end method

.method public shot()V
    .locals 2

    .line 1541
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/usb2/GcsUsbManager$6;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/usb2/GcsUsbManager$6;-><init>(Lcom/powervision/gcs/usb2/GcsUsbManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1555
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public startAccessoryComm(I)V
    .locals 2

    .line 737
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->comThreadLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string v0, "lzqUsb"

    const-string v1, "startAccessoryComm startAccessoryComm startAccessoryComm"

    .line 738
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->communicationThread:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;

    if-nez v0, :cond_0

    const-string v0, "lzqUsb"

    const-string v1, "startThread"

    .line 740
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    new-instance v0, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;-><init>(Lcom/powervision/gcs/usb2/GcsUsbManager$1;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->communicationThread:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;

    .line 742
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->communicateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;->setCommunicateListener(Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;)V

    .line 743
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->communicationThread:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;->start()V

    goto :goto_0

    :cond_0
    const-string v0, "lzqUsb"

    const-string v1, "interrupt setNeedRestart"

    .line 745
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->communicationThread:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;->interrupt()V

    .line 747
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->communicateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;

    invoke-interface {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;->setNeedRestart()V

    .line 749
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendTask:Lcom/powervision/gcs/usb2/MsgTask;

    if-nez v0, :cond_1

    const-string v0, "lzqUsb"

    const-string v1, " sendTask start"

    .line 750
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    new-instance v0, Lcom/powervision/gcs/usb2/MsgTask;

    invoke-direct {v0}, Lcom/powervision/gcs/usb2/MsgTask;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendTask:Lcom/powervision/gcs/usb2/MsgTask;

    .line 752
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->msgTrigger:Lcom/powervision/gcs/usb2/MsgHandle;

    const/16 v1, 0x65

    iput v1, v0, Lcom/powervision/gcs/usb2/MsgHandle;->type:I

    .line 753
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendTask:Lcom/powervision/gcs/usb2/MsgTask;

    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->msgTrigger:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/MsgTask;->setConnectHandle(Lcom/powervision/gcs/usb2/MsgHandle;)V

    .line 754
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendTask:Lcom/powervision/gcs/usb2/MsgTask;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgTask;->start()V

    goto :goto_1

    :cond_1
    const-string v0, "lzqUsb"

    const-string v1, " sendTask start error"

    .line 756
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :goto_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tryConnected()V
    .locals 4

    .line 616
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 617
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 618
    iput v1, v0, Landroid/os/Message;->what:I

    .line 619
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 621
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 9

    const-string v0, "lzqHttp"

    .line 392
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->outStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 394
    :try_start_0
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v5, 0x2760

    if-ne v1, v5, :cond_0

    .line 403
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "outStream . write "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    iget-object v5, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->outStream:Ljava/io/FileOutputStream;

    invoke-virtual {v5, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 407
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 410
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 412
    iget p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->h:I

    if-nez p1, :cond_1

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->start:J

    .line 415
    :cond_1
    iget p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->h:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->h:I

    const-wide/16 v2, 0x5

    cmp-long p1, v5, v2

    if-lez p1, :cond_2

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v7, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->start:J

    sub-long/2addr v2, v7

    const-string p1, "lzqup"

    .line 418
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u53d1\u6570\u636e take :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "   port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  h:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->h:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " speed: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager;->h:I

    int-to-long v5, v1

    const-wide/16 v7, 0x3e8

    div-long/2addr v2, v7

    div-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 421
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write---e--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
