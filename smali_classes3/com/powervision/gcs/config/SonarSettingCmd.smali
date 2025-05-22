.class public Lcom/powervision/gcs/config/SonarSettingCmd;
.super Ljava/lang/Object;
.source "SonarSettingCmd.java"


# static fields
.field public static isGoOnUpSonar:Z = false

.field static lock:Ljava/lang/Object; = null

.field public static final sonarPackHeadLenght:I = 0xb

.field private static sonarSettingCmd:Lcom/powervision/gcs/config/SonarSettingCmd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/powervision/gcs/config/SonarSettingCmd;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildData(II)[B
    .locals 1

    .line 94
    new-array v0, p0, [B

    add-int/lit8 p0, p0, -0x1

    .line 95
    invoke-static {p1}, Lcom/powervision/gcs/config/SonarSettingCmd;->transtoInt(I)I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;
    .locals 2

    .line 31
    sget-object v0, Lcom/powervision/gcs/config/SonarSettingCmd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/powervision/gcs/config/SonarSettingCmd;->sonarSettingCmd:Lcom/powervision/gcs/config/SonarSettingCmd;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/powervision/gcs/config/SonarSettingCmd;

    invoke-direct {v1}, Lcom/powervision/gcs/config/SonarSettingCmd;-><init>()V

    sput-object v1, Lcom/powervision/gcs/config/SonarSettingCmd;->sonarSettingCmd:Lcom/powervision/gcs/config/SonarSettingCmd;

    .line 35
    :cond_0
    sget-object v1, Lcom/powervision/gcs/config/SonarSettingCmd;->sonarSettingCmd:Lcom/powervision/gcs/config/SonarSettingCmd;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static intToBytes(II)[B
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    mul-int/lit8 v4, v3, 0x8

    rsub-int/lit8 v4, v4, 0x18

    shr-int v4, p1, v4

    int-to-byte v4, v4

    .line 59
    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_0
    new-array p1, p0, [B

    rsub-int/lit8 v0, p0, 0x4

    .line 62
    invoke-static {v1, v0, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static packToSend(BI[B)[B
    .locals 6

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 46
    fill-array-data v1, :array_0

    const/4 v2, 0x2

    .line 47
    invoke-static {v2, p1}, Lcom/powervision/gcs/config/SonarSettingCmd;->intToBytes(II)[B

    move-result-object v2

    .line 48
    array-length v3, p2

    const/16 v4, 0xb

    add-int/2addr v3, v4

    new-array v3, v3, [B

    const/4 v5, 0x0

    .line 49
    invoke-static {v1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    aput-byte p0, v3, v0

    const/16 p0, 0x9

    .line 51
    invoke-static {v2, v5, v3, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    invoke-static {p2, v5, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    nop

    :array_0
    .array-data 1
        -0x56t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static packageIt(BII)[B
    .locals 7

    const/16 v0, 0x9

    new-array v1, v0, [B

    const/16 v2, -0x56

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x55

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    const/4 v2, 0x2

    aput-byte v3, v1, v2

    const/4 v5, 0x3

    aput-byte v3, v1, v5

    const/4 v5, 0x4

    aput-byte v3, v1, v5

    const/4 v5, 0x5

    aput-byte v3, v1, v5

    const/4 v5, 0x6

    aput-byte v3, v1, v5

    const/4 v5, 0x7

    aput-byte v3, v1, v5

    const/16 v5, 0x8

    aput-byte p0, v1, v5

    new-array p0, v2, [B

    const/16 v5, 0xff

    if-ge p1, v5, :cond_0

    .line 74
    invoke-static {p1}, Lcom/powervision/gcs/config/SonarSettingCmd;->transtoInt(I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    goto :goto_0

    :cond_0
    add-int/lit16 v6, p1, -0xff

    .line 76
    invoke-static {v6}, Lcom/powervision/gcs/config/SonarSettingCmd;->transtoInt(I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, p0, v3

    .line 77
    invoke-static {v5}, Lcom/powervision/gcs/config/SonarSettingCmd;->transtoInt(I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    .line 81
    :goto_0
    invoke-static {p1, p2}, Lcom/powervision/gcs/config/SonarSettingCmd;->buildData(II)[B

    move-result-object p2

    const/16 v4, 0xb

    add-int/2addr p1, v4

    .line 83
    new-array p1, p1, [B

    .line 85
    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    invoke-static {p0, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    array-length p0, p2

    invoke-static {p2, v3, p1, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static transtoInt(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public Int2u_16_char(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    return-object v0
.end method

.method public Int2u_int(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    return-object v0
.end method

.method public U_16_char2Int([B)I
    .locals 3

    .line 302
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 304
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    array-length v2, p1

    sub-int/2addr v2, v1

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    return p1
.end method

.method public closeDataStreamCMD()V
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 117
    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/gcs/config/SonarSettingCmd;->sendCMDToSonar(B[BI)Z

    return-void
.end method

.method public connect()V
    .locals 2

    .line 309
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 310
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarManager;->get()Lcom/powervision/gcs/usb2/SonarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/SonarManager;->sendCancel()V

    .line 311
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarManager;->get()Lcom/powervision/gcs/usb2/SonarManager;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/config/SonarSettingCmd$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/config/SonarSettingCmd$1;-><init>(Lcom/powervision/gcs/config/SonarSettingCmd;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/SonarManager;->setCmdStartCallBack(Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarCmdStartCallBack;)V

    .line 319
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarManager;->get()Lcom/powervision/gcs/usb2/SonarManager;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/config/SonarSettingCmd$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/config/SonarSettingCmd$2;-><init>(Lcom/powervision/gcs/config/SonarSettingCmd;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/SonarManager;->setDataStartCallBack(Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarDataStartCallBack;)V

    goto :goto_0

    .line 329
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/utils/io/SonarSocket;->getInstance()Lcom/powervision/gcs/utils/io/SonarSocket;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/config/SonarSettingCmd$3;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/config/SonarSettingCmd$3;-><init>(Lcom/powervision/gcs/config/SonarSettingCmd;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/utils/io/SonarSocket;->setCommonCallBack(Lcom/powervision/opensource/CommonCallBack;)V

    .line 359
    invoke-static {}, Lcom/powervision/gcs/utils/io/SonarSocket;->getInstance()Lcom/powervision/gcs/utils/io/SonarSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/io/SonarSocket;->startWork()V

    .line 360
    invoke-static {}, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->getInstance()Lcom/powervision/gcs/utils/io/SonarUdpSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->connect()V

    :goto_0
    return-void
.end method

.method public getMCUSoft()V
    .locals 3

    const/16 v0, -0x3e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 103
    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/gcs/config/SonarSettingCmd;->sendCMDToSonar(B[BI)Z

    return-void
.end method

.method public getSonarMcuState()V
    .locals 3

    const-string v0, "lzqSonar"

    const-string v1, "getMcuState"

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x4b

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 138
    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/gcs/config/SonarSettingCmd;->sendCMDToSonar(B[BI)Z

    return-void
.end method

.method public getSonarPowerQuantity()V
    .locals 3

    const/16 v0, -0x4e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 132
    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/gcs/config/SonarSettingCmd;->sendCMDToSonar(B[BI)Z

    return-void
.end method

.method public getSonarTem()V
    .locals 3

    const/16 v0, -0x50

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 146
    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/gcs/config/SonarSettingCmd;->sendCMDToSonar(B[BI)Z

    return-void
.end method

.method public getWIFISoft()V
    .locals 3

    const/16 v0, -0x3c

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 110
    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/gcs/config/SonarSettingCmd;->sendCMDToSonar(B[BI)Z

    return-void
.end method

.method public openDataStreamCMD()V
    .locals 3

    const-string v0, "lzqSonar"

    const-string v1, "openDataStreamCMD"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 125
    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/gcs/config/SonarSettingCmd;->sendCMDToSonar(B[BI)Z

    return-void
.end method

.method public sendCMDToSonar(B[BI)Z
    .locals 2

    .line 211
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 212
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarManager;->get()Lcom/powervision/gcs/usb2/SonarManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/powervision/gcs/usb2/SonarManager;->sendDataToSonar(B[BI)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/powervision/gcs/config/SonarSettingCmd;->sendDataToSonar(B[BI)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public sendDataToSonar(B[BI)Z
    .locals 5

    const/16 v0, 0xb

    new-array v1, v0, [B

    const/16 v2, -0x56

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x55

    aput-byte v4, v1, v2

    const/4 v2, 0x2

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    aput-byte v3, v1, v2

    const/4 v2, 0x5

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    aput-byte p1, v1, v2

    shr-int/lit8 p1, p3, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/16 v2, 0x9

    aput-byte p1, v1, v2

    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    const/16 v2, 0xa

    aput-byte p1, v1, v2

    add-int/lit8 p1, p3, 0xb

    .line 252
    new-array p1, p1, [B

    .line 253
    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_0

    .line 255
    invoke-static {p2, v3, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/utils/io/SonarSocket;->getInstance()Lcom/powervision/gcs/utils/io/SonarSocket;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/gcs/utils/io/SonarSocket;->writeData([B)Z

    move-result p1

    return p1
.end method

.method public sendDataToSonar([BI)Z
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, v0, p1, p2}, Lcom/powervision/gcs/config/SonarSettingCmd;->sendDataToSonar(B[BI)Z

    const/4 p1, 0x1

    return p1
.end method

.method public sendSonarUPNotice(IILjava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return v0

    :cond_0
    if-eqz p3, :cond_6

    .line 179
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    if-gtz p4, :cond_2

    return v0

    :cond_2
    const/16 v1, 0x11

    new-array v2, v1, [B

    int-to-byte p2, p2

    aput-byte p2, v2, v0

    .line 187
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 188
    invoke-virtual {p0, p4}, Lcom/powervision/gcs/config/SonarSettingCmd;->Int2u_int(I)[B

    move-result-object p3

    .line 189
    array-length p4, p2

    const/4 v3, 0x1

    invoke-static {p2, v0, v2, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p2, 0xd

    .line 190
    array-length p4, p3

    invoke-static {p3, v0, v2, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eq p1, v3, :cond_4

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/16 p2, 0x20

    :goto_1
    const/4 p3, 0x2

    if-ne p1, p3, :cond_5

    const/16 p2, 0x30

    .line 198
    :cond_5
    invoke-virtual {p0, p2, v2, v1}, Lcom/powervision/gcs/config/SonarSettingCmd;->sendDataToSonar(B[BI)Z

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    :goto_2
    return v0
.end method

.method public sendToSonarConfirm(B)Z
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    const/4 p1, -0x1

    .line 226
    invoke-virtual {p0, p1, v1, v0}, Lcom/powervision/gcs/config/SonarSettingCmd;->sendDataToSonar(B[BI)Z

    move-result p1

    return p1
.end method

.method public setSonarLightClose()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const-string v2, "lzqSonar"

    const-string v3, "\u53d1\u9001\u5173\u706f"

    .line 159
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x58

    .line 160
    invoke-virtual {p0, v2, v1, v0}, Lcom/powervision/gcs/config/SonarSettingCmd;->sendCMDToSonar(B[BI)Z

    return-void
.end method

.method public setSonarLightOpen()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    const-string v2, "lzqSonar"

    const-string v3, "\u53d1\u9001\u5f00\u706f"

    .line 151
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x58

    .line 152
    invoke-virtual {p0, v2, v1, v0}, Lcom/powervision/gcs/config/SonarSettingCmd;->sendCMDToSonar(B[BI)Z

    return-void
.end method
