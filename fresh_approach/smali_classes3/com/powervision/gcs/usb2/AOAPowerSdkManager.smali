.class public Lcom/powervision/gcs/usb2/AOAPowerSdkManager;
.super Ljava/lang/Object;
.source "AOAPowerSdkManager.java"


# static fields
.field private static final HEX_CHAR:[C

.field private static aoaPowerSdkManager:Lcom/powervision/gcs/usb2/AOAPowerSdkManager; = null

.field public static needAP03_DataSendStart:Z = true

.field public static needDl01_FtpStart:Z = true

.field public static needW4_DataSendStart:Z = true

.field public static need_Dis:Z = false


# instance fields
.field aoaCallBack:Lcom/powervision/natives/callback/AOACallBack;

.field msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/powervision/gcs/usb2/MsgHandle<",
            "Lcom/powervision/gcs/usb2/Msg;",
            ">;"
        }
    .end annotation
.end field

.field msgTask:Lcom/powervision/gcs/usb2/MsgTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/powervision/gcs/usb2/MsgTask<",
            "Lcom/powervision/gcs/usb2/Msg;",
            ">;"
        }
    .end annotation
.end field

.field w:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 190
    fill-array-data v0, :array_0

    sput-object v0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->HEX_CHAR:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    const-wide/16 v0, 0x0

    .line 64
    iput-wide v0, p0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->w:J

    .line 109
    new-instance v0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager$1;-><init>(Lcom/powervision/gcs/usb2/AOAPowerSdkManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->aoaCallBack:Lcom/powervision/natives/callback/AOACallBack;

    .line 206
    new-instance v0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager$2;-><init>(Lcom/powervision/gcs/usb2/AOAPowerSdkManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    .line 49
    invoke-direct {p0}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->init()V

    return-void
.end method

.method public static asHex([BLjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 94
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 95
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    const/16 v3, 0x30

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    .line 101
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bytesToHexFun2([B)Ljava/lang/String;
    .locals 8

    .line 194
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [C

    .line 196
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    .line 197
    sget-object v6, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->HEX_CHAR:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    aput-char v7, v0, v3

    add-int/lit8 v3, v5, 0x1

    and-int/lit8 v4, v4, 0xf

    .line 198
    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x20

    .line 199
    aput-char v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    .line 202
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;
    .locals 1

    .line 53
    sget-object v0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->aoaPowerSdkManager:Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    invoke-direct {v0}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;-><init>()V

    sput-object v0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->aoaPowerSdkManager:Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    .line 56
    :cond_0
    sget-object v0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->aoaPowerSdkManager:Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    return-object v0
.end method

.method private init()V
    .locals 2

    const-string v0, "lzqmission"

    const-string v1, "init---------------"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/powervision/gcs/usb2/MsgTask;

    invoke-direct {v0}, Lcom/powervision/gcs/usb2/MsgTask;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    .line 83
    iget-object v1, p0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/MsgTask;->setConnectHandle(Lcom/powervision/gcs/usb2/MsgHandle;)V

    .line 84
    iget-object v0, p0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgTask;->start()V

    .line 85
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->aoaCallBack:Lcom/powervision/natives/callback/AOACallBack;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setAoaCallBack(Lcom/powervision/natives/callback/AOACallBack;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAPacket(Lcom/powervision/gcs/usb2/Msg;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized connectChannel(I)V
    .locals 0

    monitor-enter p0

    .line 188
    monitor-exit p0

    return-void
.end method

.method public resetAp03Upgrade()V
    .locals 2

    const-string v0, "lzqup"

    const-string v1, "resetAp03Upgrade"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 73
    sput-boolean v0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->need_Dis:Z

    const/4 v0, 0x1

    .line 74
    sput-boolean v0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->needAP03_DataSendStart:Z

    return-void
.end method
