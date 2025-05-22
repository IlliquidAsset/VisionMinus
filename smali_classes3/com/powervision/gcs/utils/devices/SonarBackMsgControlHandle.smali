.class public Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;
.super Ljava/lang/Object;
.source "SonarBackMsgControlHandle.java"


# static fields
.field private static lock:Ljava/lang/Object;

.field private static sonarBackMsgControlHandle:Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;

.field public static testUPTAG:Ljava/lang/String;


# instance fields
.field private CurrentSendFilesLenght:J

.field private SonarBackDataLenght:I

.field private isSonarWifi2:Z

.field private sonarReceiveMcuPackSize:I

.field private sonarReceiveWifiPackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->lock:Ljava/lang/Object;

    const-string v0, "sonarwifiupindexpack"

    .line 28
    sput-object v0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->testUPTAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->sonarReceiveWifiPackSize:I

    .line 27
    iput v0, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->sonarReceiveMcuPackSize:I

    .line 31
    iput v0, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->SonarBackDataLenght:I

    .line 70
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->isSonarWifi2:Z

    return-void
.end method

.method public static getInstance()Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;
    .locals 2

    .line 35
    sget-object v0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->sonarBackMsgControlHandle:Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;

    invoke-direct {v1}, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;-><init>()V

    sput-object v1, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->sonarBackMsgControlHandle:Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;

    .line 38
    :cond_0
    sget-object v1, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->sonarBackMsgControlHandle:Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSonarUseFilesPath(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 204
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/gcs/utils/FileUtil;->getFirmwareDownloadPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SONAR_WIFISOFT_NEWFILE2.bin"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 202
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/gcs/utils/FileUtil;->getFirmwareDownloadPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SONAR_MCUSOFT_NEWFILE.bin"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 199
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/gcs/utils/FileUtil;->getFirmwareDownloadPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SONAR_WIFISOFT_NEWFILE1.bin"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public analsysisWifiUPNoticeBackMsg([BI)V
    .locals 3

    if-eqz p1, :cond_4

    .line 79
    array-length v0, p1

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0xb

    .line 83
    aget-byte v0, p1, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_2

    if-ne p2, v2, :cond_1

    .line 85
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/config/SonarSettingCmd;->U_16_char2Int([B)I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->sonarReceiveWifiPackSize:I

    :cond_1
    if-ne p2, v1, :cond_3

    .line 87
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/gcs/config/SonarSettingCmd;->U_16_char2Int([B)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->sonarReceiveMcuPackSize:I

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_3

    .line 89
    iget-boolean p1, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->isSonarWifi2:Z

    if-nez p1, :cond_3

    .line 91
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p1

    const-string p2, "SONAR_WIFISOFT_NEWVERSION2"

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/SPHelperUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    .line 92
    invoke-virtual {p0, p2, v1, p1}, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->sendSonarUPNotice(IILjava/lang/String;)Z

    .line 93
    iput-boolean v2, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->isSonarWifi2:Z

    .line 96
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->testUPTAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "upnoticecom"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->sonarReceiveWifiPackSize:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->sonarReceiveMcuPackSize:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public getCurrentSendFilesLenght()J
    .locals 2

    .line 244
    iget-wide v0, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->CurrentSendFilesLenght:J

    return-wide v0
.end method

.method public getSonarBackDataLenght()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->SonarBackDataLenght:I

    return v0
.end method

.method public sendSonarUPFiles(II)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    sget-object v0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->testUPTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getpackindex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p2, v1, :cond_1

    if-eq p2, v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 125
    :cond_0
    iget v4, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->sonarReceiveMcuPackSize:I

    if-gtz v4, :cond_3

    const/16 v4, 0x10

    goto :goto_0

    .line 118
    :cond_1
    iget v4, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->sonarReceiveWifiPackSize:I

    .line 119
    iget-boolean v5, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->isSonarWifi2:Z

    if-eqz v5, :cond_2

    const/4 p2, 0x3

    :cond_2
    if-gtz v4, :cond_3

    const/16 v4, 0x400

    :cond_3
    :goto_0
    if-eqz v4, :cond_e

    .line 133
    invoke-direct {p0, p2}, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->getSonarUseFilesPath(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 136
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 140
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_b

    mul-int v7, p1, v4

    .line 143
    iput v7, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->SonarBackDataLenght:I

    .line 144
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    iget v10, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->SonarBackDataLenght:I

    int-to-long v10, v10

    cmp-long v12, v8, v10

    if-gez v12, :cond_4

    .line 146
    invoke-virtual {p0, p2}, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->sendVerifyFilesMd5(I)Z

    return-void

    .line 149
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 152
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 154
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v6, 0x0

    .line 157
    :goto_1
    sget-object v5, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->testUPTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "upfileverify:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v4, 0x2

    .line 158
    new-array v5, v5, [B

    .line 159
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object v8

    int-to-long v9, v7

    .line 162
    :try_start_1
    invoke-virtual {v6, v9, v10}, Ljava/io/FileInputStream;->skip(J)J

    .line 163
    invoke-virtual {v6, v5, v2, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    if-lez v7, :cond_7

    .line 164
    invoke-virtual {v8, p1}, Lcom/powervision/gcs/config/SonarSettingCmd;->Int2u_16_char(I)[B

    move-result-object p1

    .line 165
    invoke-static {v5, v2, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    aget-byte v4, p1, v2

    aput-byte v4, v5, v2

    .line 167
    aget-byte p1, p1, v1

    aput-byte p1, v5, v1

    if-eq p2, v1, :cond_6

    if-eq p2, v3, :cond_5

    if-eq p2, v0, :cond_6

    goto :goto_2

    .line 174
    :cond_5
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object p1

    const/16 p2, 0x33

    add-int/2addr v7, v3

    invoke-virtual {p1, p2, v5, v7}, Lcom/powervision/gcs/config/SonarSettingCmd;->sendDataToSonar(B[BI)Z

    goto :goto_2

    .line 171
    :cond_6
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object p1

    const/16 p2, 0x23

    add-int/2addr v7, v3

    invoke-virtual {p1, p2, v5, v7}, Lcom/powervision/gcs/config/SonarSettingCmd;->sendDataToSonar(B[BI)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_2
    if-eqz v6, :cond_8

    .line 183
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 179
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_8

    .line 183
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 185
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_3
    return-void

    :goto_4
    if-eqz v6, :cond_9

    .line 183
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p2

    .line 185
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 186
    :cond_9
    :goto_5
    throw p1

    .line 150
    :cond_a
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "file can\'t read"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_b
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "file error"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_c
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "file not exists"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_d
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "param fType error"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_e
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "send packsize is 0"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendSonarUPNotice(IILjava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->SonarBackDataLenght:I

    .line 53
    invoke-direct {p0, p1}, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->getSonarUseFilesPath(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 56
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 59
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 62
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->isSonarWifi2:Z

    .line 64
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->CurrentSendFilesLenght:J

    .line 65
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, p1, p2, p3, v3}, Lcom/powervision/gcs/config/SonarSettingCmd;->sendSonarUPNotice(IILjava/lang/String;I)Z

    return v1
.end method

.method public sendVerifyFilesMd5(I)Z
    .locals 7

    .line 218
    iget-boolean v0, p0, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->isSonarWifi2:Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-ne p1, v2, :cond_0

    const/4 p1, 0x3

    .line 220
    :cond_0
    invoke-direct {p0, p1}, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->getSonarUseFilesPath(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    return v3

    .line 223
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    .line 226
    :cond_2
    invoke-static {v4}, Lcom/powervision/gcs/utils/MD5Utils;->getMd5Char16(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 228
    sget-object v3, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->testUPTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "md5verify+++:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/powervision/gcs/utils/MD5Utils;->encode(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    if-eq p1, v1, :cond_4

    goto :goto_0

    .line 235
    :cond_3
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object p1

    const/16 v1, 0x35

    array-length v3, v0

    invoke-virtual {p1, v1, v0, v3}, Lcom/powervision/gcs/config/SonarSettingCmd;->sendDataToSonar(B[BI)Z

    goto :goto_0

    .line 232
    :cond_4
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object p1

    const/16 v1, 0x25

    array-length v3, v0

    invoke-virtual {p1, v1, v0, v3}, Lcom/powervision/gcs/config/SonarSettingCmd;->sendDataToSonar(B[BI)Z

    :cond_5
    :goto_0
    return v2
.end method
