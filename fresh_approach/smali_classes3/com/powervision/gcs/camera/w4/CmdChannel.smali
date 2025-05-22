.class public abstract Lcom/powervision/gcs/camera/w4/CmdChannel;
.super Ljava/lang/Object;
.source "CmdChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/camera/w4/CmdChannel$QueueRunnable;
    }
.end annotation


# static fields
.field private static final ERR_CODE:[Ljava/lang/String;

.field private static final ERR_INVALID_OPERATION:I = -0xe

.field private static final ERR_INVALID_TOKEN:I = -0x4

.field private static final ERR_MAX_NUM:I = 0x1a

.field private static final ERR_NO_MORE_SPACE:I = -0x11

.field private static final ERR_SESSION_START_FAIL:I = -0x3

.field private static final ERR_UNKNOW:I = -0x1

.field private static final PDT_EVT_AC_OFF:I = 0x2

.field private static final PDT_EVT_AC_ON:I = 0x2

.field private static final PDT_EVT_CHIP_TEMP_ALARM:I = 0x2

.field private static final PDT_EVT_CHIP_TEMP_HIGH:I = 0x2

.field private static final PDT_EVT_NORMAL_OPT:I = 0x0

.field private static final PDT_EVT_PWR_LOW:I = 0x2

.field private static final PDT_EVT_PWR_LOW_ALARM:I = 0x2

.field private static final PDT_EVT_PWR_TEMP_ALARM:I = 0x2

.field private static final PDT_EVT_PWR_TEMP_HIGH:I = 0x2

.field private static final PDT_EVT_REC_ERR:I = 0x2

.field private static final PDT_EVT_REC_FULL:I = 0x1

.field private static final PDT_EVT_SD_ERR:I = 0x2

.field private static final PDT_EVT_SD_MOUNT_ON:I = 0x2

.field private static final PDT_EVT_SD_NOEXIST:I = 0x2

.field private static final PDT_EVT_SHUT_DOWN:I = 0x2

.field private static final PDT_EVT_SNAP_ERR:I = 0x2

.field private static final PDT_EVT_SNAP_FULL:I = 0x2

.field private static final PDT_EVT_USB_CONNECTED:I = 0x2

.field private static final PDT_EVT_USB_DISCONNECTED:I = 0x2

.field private static final PDT_EVT_WIFI_OFF:I = 0x2

.field private static final RX_TIMEOUT:I = 0x1f40

.field private static final TAG:Ljava/lang/String; = "CmdChannel"

.field protected static mListener:Lcom/powervision/gcs/camera/w4/IChannelListener;


# instance fields
.field private mReplyReceived:Z

.field private final mRxLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    const-string v0, "OK"

    const-string v1, "UNKNOW(-1)"

    const-string v2, "INVALID_ERROR(-2)"

    const-string v3, "SESSION_START_FAIL(-3)"

    const-string v4, "INVALID_SESSION(-4)"

    const-string v5, "REACH_MAX_CLIENT(-5)"

    const-string v6, "INVALID_ERROR(-6)"

    const-string v7, "JSON_PACKAGE_ERROR(-7)"

    const-string v8, "JSON_PACKAGE_TIMEOUT(-8)"

    const-string v9, "JSON_SYNTAX_ERROR(-9)"

    const-string v10, "INVALID_ERROR(-10)"

    const-string v11, "INVALID_ERROR(-11)"

    const-string v12, "INVALID_ERROR(-12)"

    const-string v13, "INVALID_OPTION_VALUE(-13)"

    const-string v14, "INVALID_OPERATION(-14)"

    const-string v15, "INVALID_ERROR(-15)"

    const-string v16, "HDMI_INSERTED(-16)"

    const-string v17, "NO_MORE_SPACE(-17)"

    const-string v18, "CARD_PROTECTED(-18)"

    const-string v19, "NO_MORE_MEMORY(-19)"

    const-string v20, "PIV_NOT_ALLOWED(-20)"

    const-string v21, "SYSTEM_BUSY(-21)"

    const-string v22, "APP_NOT_READY(-22)"

    const-string v23, "OPERATION_UNSUPPORTED(-23)"

    const-string v24, "INVALID_TYPE(-24)"

    const-string v25, "INVALID_PARAM(-25)"

    const-string v26, "INVALID_PATH(-26)"

    .line 38
    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/gcs/camera/w4/CmdChannel;->ERR_CODE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/camera/w4/IChannelListener;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/camera/w4/CmdChannel;->mRxLock:Ljava/lang/Object;

    .line 82
    sput-object p1, Lcom/powervision/gcs/camera/w4/CmdChannel;->mListener:Lcom/powervision/gcs/camera/w4/IChannelListener;

    return-void
.end method

.method static synthetic access$002(Lcom/powervision/gcs/camera/w4/CmdChannel;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/powervision/gcs/camera/w4/CmdChannel;->mReplyReceived:Z

    return p1
.end method

.method static synthetic access$100(Lcom/powervision/gcs/camera/w4/CmdChannel;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/powervision/gcs/camera/w4/CmdChannel;->mRxLock:Ljava/lang/Object;

    return-object p0
.end method

.method private waitForReply()Z
    .locals 5

    const/4 v0, 0x0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/camera/w4/CmdChannel;->mRxLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :try_start_1
    iget-object v2, p0, Lcom/powervision/gcs/camera/w4/CmdChannel;->mRxLock:Ljava/lang/Object;

    const-wide/16 v3, 0x1f40

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 101
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :try_start_2
    iget-boolean v1, p0, Lcom/powervision/gcs/camera/w4/CmdChannel;->mReplyReceived:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v2

    .line 101
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    const-string v2, "CmdChannel"

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterruptedException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public declared-synchronized checkHeartbeat()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "{\"event\":0}"

    .line 122
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/camera/w4/CmdChannel;->sendRequest(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract readFromChannel()Ljava/lang/String;
.end method

.method public sendRequest(Ljava/lang/String;)Z
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmdChannel"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/powervision/gcs/camera/w4/CmdChannel;->mReplyReceived:Z

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/camera/w4/CmdChannel;->writeToChannel([B)V

    .line 130
    invoke-direct {p0}, Lcom/powervision/gcs/camera/w4/CmdChannel;->waitForReply()Z

    move-result p1

    return p1
.end method

.method public startIO()V
    .locals 2

    const-string v0, "CmdChannel"

    const-string v1, "startIO"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/camera/w4/CmdChannel$QueueRunnable;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/camera/w4/CmdChannel$QueueRunnable;-><init>(Lcom/powervision/gcs/camera/w4/CmdChannel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected abstract writeToChannel([B)V
.end method
