.class public Lcom/powervision/gcs/mina/HandlerEvent;
.super Ljava/lang/Object;
.source "HandlerEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;,
        Lcom/powervision/gcs/mina/HandlerEvent$OnSonarTemperatureHandlerListener;,
        Lcom/powervision/gcs/mina/HandlerEvent$OnSonarStartOrStopListener;,
        Lcom/powervision/gcs/mina/HandlerEvent$OnSonarDataStatusChangeListener;,
        Lcom/powervision/gcs/mina/HandlerEvent$OnSonarLightStateChangedListener;,
        Lcom/powervision/gcs/mina/HandlerEvent$OnSonarBatteryHandlerListener;
    }
.end annotation


# static fields
.field private static final HEX_CHAR:[C

.field private static final TAG:Ljava/lang/String; = "lzqSonar"

.field private static handlerEvent:Lcom/powervision/gcs/mina/HandlerEvent;


# instance fields
.field private imageListener:Lcom/powervision/gcs/callback/SonarImageDataListener;

.field lastNum:J

.field lasttime:J

.field private mOnSonarTemperatureHandlerListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarTemperatureHandlerListener;

.field private mSonarBatteryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/powervision/gcs/mina/HandlerEvent$OnSonarBatteryHandlerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSonarVersionListener:Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;

.field num:J

.field onDataReceiveListener:Lcom/powervision/gcs/usb2/SonarManager$OnDataReceiveListener;

.field private onSonarDataStatusChangeListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarDataStatusChangeListener;

.field private onSonarLightStateChangedListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarLightStateChangedListener;

.field runnable:Ljava/lang/Runnable;

.field private sonarStartOrStopListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarStartOrStopListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 80
    fill-array-data v0, :array_0

    sput-object v0, Lcom/powervision/gcs/mina/HandlerEvent;->HEX_CHAR:[C

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
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/mina/HandlerEvent;->mSonarBatteryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 59
    new-instance v0, Lcom/powervision/gcs/mina/HandlerEvent$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/mina/HandlerEvent$1;-><init>(Lcom/powervision/gcs/mina/HandlerEvent;)V

    iput-object v0, p0, Lcom/powervision/gcs/mina/HandlerEvent;->onDataReceiveListener:Lcom/powervision/gcs/usb2/SonarManager$OnDataReceiveListener;

    const-wide/16 v0, 0x0

    .line 94
    iput-wide v0, p0, Lcom/powervision/gcs/mina/HandlerEvent;->lasttime:J

    .line 479
    new-instance v2, Lcom/powervision/gcs/mina/HandlerEvent$2;

    invoke-direct {v2, p0}, Lcom/powervision/gcs/mina/HandlerEvent$2;-><init>(Lcom/powervision/gcs/mina/HandlerEvent;)V

    iput-object v2, p0, Lcom/powervision/gcs/mina/HandlerEvent;->runnable:Ljava/lang/Runnable;

    .line 507
    iput-wide v0, p0, Lcom/powervision/gcs/mina/HandlerEvent;->num:J

    .line 508
    iput-wide v0, p0, Lcom/powervision/gcs/mina/HandlerEvent;->lastNum:J

    .line 35
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarManager;->get()Lcom/powervision/gcs/usb2/SonarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->onDataReceiveListener:Lcom/powervision/gcs/usb2/SonarManager$OnDataReceiveListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/SonarManager;->setListener(Lcom/powervision/gcs/usb2/SonarManager$OnDataReceiveListener;)V

    .line 37
    invoke-static {}, Lcom/powervision/base/utils/LoopingManager;->get()Lcom/powervision/base/utils/LoopingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->runnable:Ljava/lang/Runnable;

    const-string v2, "SonarTimeOut"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v1, v3}, Lcom/powervision/base/utils/LoopingManager;->addAWork(Ljava/lang/String;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public static bytesToHexFun2([B)Ljava/lang/String;
    .locals 8

    .line 84
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 86
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    .line 87
    sget-object v6, Lcom/powervision/gcs/mina/HandlerEvent;->HEX_CHAR:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    aput-char v7, v0, v3

    add-int/lit8 v3, v5, 0x1

    and-int/lit8 v4, v4, 0xf

    .line 88
    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static getInstance()Lcom/powervision/gcs/mina/HandlerEvent;
    .locals 1

    .line 52
    sget-object v0, Lcom/powervision/gcs/mina/HandlerEvent;->handlerEvent:Lcom/powervision/gcs/mina/HandlerEvent;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/powervision/gcs/mina/HandlerEvent;

    invoke-direct {v0}, Lcom/powervision/gcs/mina/HandlerEvent;-><init>()V

    sput-object v0, Lcom/powervision/gcs/mina/HandlerEvent;->handlerEvent:Lcom/powervision/gcs/mina/HandlerEvent;

    .line 56
    :cond_0
    sget-object v0, Lcom/powervision/gcs/mina/HandlerEvent;->handlerEvent:Lcom/powervision/gcs/mina/HandlerEvent;

    return-object v0
.end method


# virtual methods
.method public addSonarBatteryListener(Lcom/powervision/gcs/mina/HandlerEvent$OnSonarBatteryHandlerListener;)V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/powervision/gcs/mina/HandlerEvent;->mSonarBatteryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/powervision/gcs/mina/HandlerEvent;->mSonarBatteryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public handle([B)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 122
    iget-wide v0, p0, Lcom/powervision/gcs/mina/HandlerEvent;->num:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/powervision/gcs/mina/HandlerEvent;->num:J

    if-eqz p1, :cond_17

    .line 126
    array-length v0, p1

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    .line 129
    :cond_0
    array-length v0, p1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " 13   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/powervision/gcs/mina/HandlerEvent;->bytesToHexFun2([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "lzqSonar"

    invoke-static {v2, v0}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 133
    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/powervision/gcs/mina/HandlerEvent;->transToHex(B)I

    move-result v2

    const/4 v3, 0x0

    .line 134
    aget-byte v4, p1, v3

    invoke-virtual {p0, v4}, Lcom/powervision/gcs/mina/HandlerEvent;->transToHex(B)I

    move-result v4

    const/16 v5, 0xaa

    if-ne v4, v5, :cond_17

    .line 139
    invoke-static {}, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->getInstance()Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;

    move-result-object v4

    const/16 v5, 0x21

    const/4 v6, 0x1

    if-eq v2, v5, :cond_16

    const/16 v5, 0x22

    const/16 v7, 0xd

    if-eq v2, v5, :cond_14

    const/16 v5, 0x24

    if-eq v2, v5, :cond_13

    const/16 v5, 0x26

    if-eq v2, v5, :cond_11

    const/16 v5, 0x34

    const/4 v8, 0x2

    if-eq v2, v5, :cond_10

    const/16 v5, 0x36

    if-eq v2, v5, :cond_f

    const/16 v5, 0xb1

    const/16 v9, 0xc

    if-eq v2, v5, :cond_e

    const/16 v5, 0xb6

    if-eq v2, v5, :cond_c

    const/16 v5, 0xc3

    const-string v10, "utf-8"

    if-eq v2, v5, :cond_b

    const/16 v5, 0xc5

    if-eq v2, v5, :cond_a

    const/16 v5, 0xfd

    if-eq v2, v5, :cond_8

    const/16 v3, 0xff

    if-eq v2, v3, :cond_6

    const/16 v3, 0x31

    if-eq v2, v3, :cond_5

    const/16 v3, 0x32

    if-eq v2, v3, :cond_3

    const/16 v3, 0xb3

    if-eq v2, v3, :cond_2

    const/16 v0, 0xb4

    if-eq v2, v0, :cond_1

    goto/16 :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/mina/HandlerEvent;->imageListener:Lcom/powervision/gcs/callback/SonarImageDataListener;

    if-eqz v0, :cond_17

    sget-boolean v0, Lcom/powervision/gcs/utils/SonarStateHelper;->Sonar_Demo_Data_Show:Z

    if-nez v0, :cond_17

    .line 143
    iget-object v0, p0, Lcom/powervision/gcs/mina/HandlerEvent;->imageListener:Lcom/powervision/gcs/callback/SonarImageDataListener;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/callback/SonarImageDataListener;->setImagerData([B)V

    goto/16 :goto_0

    .line 224
    :cond_2
    aget-byte v1, p1, v1

    .line 225
    aget-byte p1, p1, v9

    shl-int/lit8 v0, v1, 0x8

    .line 228
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/mina/HandlerEvent;->transToHex(B)I

    move-result p1

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0xa

    .line 231
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/mina/HandlerEvent;->notifySonarBatteryListeners(I)V

    goto/16 :goto_0

    .line 278
    :cond_3
    array-length v0, p1

    if-ge v0, v7, :cond_4

    goto/16 :goto_0

    .line 281
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/config/SonarSettingCmd;->U_16_char2Int([B)I

    move-result p1

    invoke-virtual {v4, p1, v8}, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->sendSonarUPFiles(II)V

    .line 282
    iget-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->mSonarVersionListener:Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;

    if-eqz p1, :cond_17

    .line 283
    iget-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->mSonarVersionListener:Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;

    invoke-interface {p1}, Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;->onSonarUPFiles()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 274
    :cond_5
    invoke-virtual {v4, p1, v8}, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->analsysisWifiUPNoticeBackMsg([BI)V

    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->testUPTAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "upnoticecom"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mcucom"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 169
    :cond_6
    array-length v0, p1

    if-ne v0, v9, :cond_17

    .line 170
    array-length v0, p1

    sub-int/2addr v0, v6

    aget-byte v0, p1, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_7

    .line 172
    iget-object v0, p0, Lcom/powervision/gcs/mina/HandlerEvent;->onSonarDataStatusChangeListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarDataStatusChangeListener;

    if-eqz v0, :cond_7

    .line 173
    invoke-interface {v0}, Lcom/powervision/gcs/mina/HandlerEvent$OnSonarDataStatusChangeListener;->onSonarDataStart()V

    .line 176
    :cond_7
    array-length v0, p1

    sub-int/2addr v0, v6

    aget-byte p1, p1, v0

    const/16 v0, 0x11

    if-ne p1, v0, :cond_17

    .line 178
    iget-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->onSonarDataStatusChangeListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarDataStatusChangeListener;

    if-eqz p1, :cond_17

    .line 179
    invoke-interface {p1}, Lcom/powervision/gcs/mina/HandlerEvent$OnSonarDataStatusChangeListener;->onSonarDataSotp()V

    goto/16 :goto_0

    .line 313
    :cond_8
    array-length v0, p1

    if-ne v0, v7, :cond_17

    .line 315
    aget-byte p1, p1, v9

    if-ne p1, v6, :cond_9

    .line 319
    iget-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->onSonarDataStatusChangeListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarDataStatusChangeListener;

    if-eqz p1, :cond_17

    .line 320
    iget-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->onSonarLightStateChangedListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarLightStateChangedListener;

    invoke-interface {p1, v3}, Lcom/powervision/gcs/mina/HandlerEvent$OnSonarLightStateChangedListener;->lightChanged(Z)V

    goto/16 :goto_0

    :cond_9
    if-nez p1, :cond_17

    .line 325
    iget-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->onSonarLightStateChangedListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarLightStateChangedListener;

    if-eqz p1, :cond_17

    .line 326
    invoke-interface {p1, v6}, Lcom/powervision/gcs/mina/HandlerEvent$OnSonarLightStateChangedListener;->lightChanged(Z)V

    goto/16 :goto_0

    .line 209
    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v1, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/base/utils/SPHelperUtils;->setSonarWifiSoftVersion(Ljava/lang/String;)Z

    .line 213
    iget-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->mSonarVersionListener:Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;

    if-eqz p1, :cond_17

    .line 214
    invoke-interface {p1, v0}, Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;->onSonarWifiVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v1, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/base/utils/SPHelperUtils;->setSonarMcuSoftVersion(Ljava/lang/String;)Z

    .line 199
    iget-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->mSonarVersionListener:Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;

    if-eqz p1, :cond_17

    .line 200
    invoke-interface {p1, v0}, Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;->onSonarVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    :cond_c
    array-length v0, p1

    const/16 v1, 0x29

    if-ne v0, v1, :cond_17

    const/16 v0, 0x15

    .line 335
    aget-byte p1, p1, v0

    if-ne p1, v6, :cond_d

    .line 339
    iget-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->onSonarDataStatusChangeListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarDataStatusChangeListener;

    if-eqz p1, :cond_17

    .line 340
    iget-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->onSonarLightStateChangedListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarLightStateChangedListener;

    invoke-interface {p1, v3}, Lcom/powervision/gcs/mina/HandlerEvent$OnSonarLightStateChangedListener;->lightChanged(Z)V

    goto/16 :goto_0

    :cond_d
    if-nez p1, :cond_17

    .line 345
    iget-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->onSonarLightStateChangedListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarLightStateChangedListener;

    if-eqz p1, :cond_17

    .line 346
    invoke-interface {p1, v6}, Lcom/powervision/gcs/mina/HandlerEvent$OnSonarLightStateChangedListener;->lightChanged(Z)V

    goto/16 :goto_0

    .line 153
    :cond_e
    aget-byte v1, p1, v1

    .line 154
    aget-byte p1, p1, v9

    shl-int/lit8 v0, v1, 0x8

    .line 157
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/mina/HandlerEvent;->transToHex(B)I

    move-result p1

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0xa

    .line 160
    iget-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->mOnSonarTemperatureHandlerListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarTemperatureHandlerListener;

    if-eqz p1, :cond_17

    .line 161
    invoke-interface {p1, v0}, Lcom/powervision/gcs/mina/HandlerEvent$OnSonarTemperatureHandlerListener;->onTemperatureHandler(I)V

    goto/16 :goto_0

    .line 297
    :cond_f
    sget-object p1, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->testUPTAG:Ljava/lang/String;

    const-string v0, "mcuupsuccess"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/powervision/gcs/config/SonarSettingCmd;->sendToSonarConfirm(B)Z

    .line 300
    iget-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->mSonarVersionListener:Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;

    if-eqz p1, :cond_17

    .line 301
    invoke-interface {p1}, Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;->onSonarMCUUpSucess()V

    goto :goto_0

    .line 291
    :cond_10
    invoke-virtual {v4, v8}, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->sendVerifyFilesMd5(I)Z

    .line 292
    iget-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->mSonarVersionListener:Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;

    if-eqz p1, :cond_17

    .line 293
    invoke-interface {p1}, Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;->onVerifyFilesMd5()V

    goto :goto_0

    .line 263
    :cond_11
    sget-object p1, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->testUPTAG:Ljava/lang/String;

    const-string v0, "wifiupsuccess"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/powervision/gcs/config/SonarSettingCmd;->sendToSonarConfirm(B)Z

    .line 266
    iget-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->mSonarVersionListener:Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;

    if-eqz p1, :cond_12

    .line 267
    invoke-interface {p1}, Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;->onSonarWifiUpSuccess()V

    .line 270
    :cond_12
    sput-boolean v3, Lcom/powervision/gcs/config/SonarSettingCmd;->isGoOnUpSonar:Z

    goto :goto_0

    .line 257
    :cond_13
    invoke-virtual {v4, v6}, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->sendVerifyFilesMd5(I)Z

    .line 258
    iget-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->mSonarVersionListener:Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;

    if-eqz p1, :cond_17

    .line 259
    invoke-interface {p1}, Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;->onVerifyFilesMd5()V

    goto :goto_0

    .line 241
    :cond_14
    array-length v0, p1

    if-ge v0, v7, :cond_15

    goto :goto_0

    .line 244
    :cond_15
    :try_start_1
    sget-boolean v0, Lcom/powervision/gcs/config/SonarSettingCmd;->isGoOnUpSonar:Z

    if-eqz v0, :cond_17

    .line 245
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p1}, Lcom/powervision/gcs/config/SonarSettingCmd;->U_16_char2Int([B)I

    move-result p1

    .line 245
    invoke-virtual {v4, p1, v6}, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->sendSonarUPFiles(II)V

    .line 247
    iget-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->mSonarVersionListener:Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;

    if-eqz p1, :cond_17

    .line 248
    iget-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->mSonarVersionListener:Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;

    invoke-interface {p1}, Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;->onSonarUPFiles()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 252
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 235
    :cond_16
    invoke-virtual {v4, p1, v6}, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->analsysisWifiUPNoticeBackMsg([BI)V

    :cond_17
    :goto_0
    return-void
.end method

.method public handleImage([B)V
    .locals 4

    .line 97
    iget-wide v0, p0, Lcom/powervision/gcs/mina/HandlerEvent;->num:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/powervision/gcs/mina/HandlerEvent;->num:J

    if-eqz p1, :cond_1

    .line 99
    array-length v0, p1

    const/16 v1, 0x1ff

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/gcs/mina/HandlerEvent;->lasttime:J

    const/16 v0, 0x8

    .line 104
    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/mina/HandlerEvent;->transToHex(B)I

    move-result v0

    const/4 v1, 0x0

    .line 105
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/mina/HandlerEvent;->transToHex(B)I

    move-result v1

    const/16 v2, 0xaa

    if-ne v1, v2, :cond_1

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/powervision/gcs/mina/HandlerEvent;->imageListener:Lcom/powervision/gcs/callback/SonarImageDataListener;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/powervision/gcs/utils/SonarStateHelper;->Sonar_Demo_Data_Show:Z

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/powervision/gcs/mina/HandlerEvent;->imageListener:Lcom/powervision/gcs/callback/SonarImageDataListener;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/callback/SonarImageDataListener;->setImagerData([B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifySonarBatteryListeners(I)V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/powervision/gcs/mina/HandlerEvent;->mSonarBatteryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 470
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/mina/HandlerEvent$OnSonarBatteryHandlerListener;

    .line 473
    invoke-interface {v1, p1}, Lcom/powervision/gcs/mina/HandlerEvent$OnSonarBatteryHandlerListener;->onBatteryHandler(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeSonarBatteryListener(Lcom/powervision/gcs/mina/HandlerEvent$OnSonarBatteryHandlerListener;)V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/powervision/gcs/mina/HandlerEvent;->mSonarBatteryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/powervision/gcs/mina/HandlerEvent;->mSonarBatteryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setOnSonarDataStatusChangeListener(Lcom/powervision/gcs/mina/HandlerEvent$OnSonarDataStatusChangeListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->onSonarDataStatusChangeListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarDataStatusChangeListener;

    return-void
.end method

.method public setOnSonarLightStateChangedListener(Lcom/powervision/gcs/mina/HandlerEvent$OnSonarLightStateChangedListener;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->onSonarLightStateChangedListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarLightStateChangedListener;

    return-void
.end method

.method public setOnSonarTemperatureHandlerListener(Lcom/powervision/gcs/mina/HandlerEvent$OnSonarTemperatureHandlerListener;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->mOnSonarTemperatureHandlerListener:Lcom/powervision/gcs/mina/HandlerEvent$OnSonarTemperatureHandlerListener;

    return-void
.end method

.method public setSonarDataListener(Lcom/powervision/gcs/callback/SonarImageDataListener;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->imageListener:Lcom/powervision/gcs/callback/SonarImageDataListener;

    return-void
.end method

.method public setSonarVersionListener(Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/powervision/gcs/mina/HandlerEvent;->mSonarVersionListener:Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;

    return-void
.end method

.method public transToHex(B)I
    .locals 0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method
