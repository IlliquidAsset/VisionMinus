.class public Lcom/powervision/natives/JniDl01Native;
.super Ljava/lang/Object;
.source "JniDl01Native.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static NotifyOnAirConnectLinkResultListener(Ljava/lang/String;)V
    .locals 7

    .line 73
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnAirConnectLinkResultListener()Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirConnectLinkResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnAirConnectLinkResultListener()Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirConnectLinkResultListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirConnectLinkResultListener;->getAirDl01LinkResult(Ljava/lang/String;)V

    .line 80
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getAirConnectListener()Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "Failed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "CheckError"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "Timeout"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "Success"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_4
    const-string v1, "Disconnected"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "CheckOK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x5

    :cond_1
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    goto :goto_1

    .line 103
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getAirConnectListener()Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;->onAirCheckOk()V

    goto :goto_1

    .line 99
    :cond_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getAirConnectListener()Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;->onAirCheckError()V

    goto :goto_1

    .line 96
    :cond_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getAirConnectListener()Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;->onConnectAirFailed()V

    goto :goto_1

    .line 92
    :cond_5
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getAirConnectListener()Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;->onConnectAirTimeOut()V

    goto :goto_1

    .line 88
    :cond_6
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getAirConnectListener()Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;->onAirDisconnect()V

    goto :goto_1

    .line 84
    :cond_7
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getAirConnectListener()Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;->onConnectAirSuccess()V

    :cond_8
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70889b3c -> :sswitch_5
        -0x488afda5 -> :sswitch_4
        -0xc12281d -> :sswitch_3
        0x14e7e541 -> :sswitch_2
        0x567dbe00 -> :sswitch_1
        0x7cfb805d -> :sswitch_0
    .end sparse-switch
.end method

.method static NotifyOnAirSetGetDl01OperationResultListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "FFSSID"

    .line 132
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jni operate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4_dl01_a"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnAirSetGetDl01OperationResultListener()Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnAirSetGetDl01OperationResultListener()Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;->getAirDl01OperationResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getNotifyOnAirSetGetDl01OperationResultListener()Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 142
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getNotifyOnAirSetGetDl01OperationResultListener()Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;->getAirDl01OperationResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static NotifyOnConnectLinkResultListener(Ljava/lang/String;)V
    .locals 7

    .line 36
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getNotifyOnConnectLinkResultListener()Lcom/powervision/natives/PowerSDKCallback$NotifyOnConnectLinkResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getNotifyOnConnectLinkResultListener()Lcom/powervision/natives/PowerSDKCallback$NotifyOnConnectLinkResultListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerSDKCallback$NotifyOnConnectLinkResultListener;->getDl01LinkResult(Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getDl01GrondConnectListener()Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "Failed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "CheckError"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "Timeout"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "Success"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_4
    const-string v1, "Disconnected"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "CheckOK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x5

    :cond_1
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    goto :goto_1

    .line 66
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getDl01GrondConnectListener()Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;->onCheckOk()V

    goto :goto_1

    .line 63
    :cond_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getDl01GrondConnectListener()Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;->onCheckError()V

    goto :goto_1

    .line 58
    :cond_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getDl01GrondConnectListener()Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;->onConnectLinkFailed()V

    goto :goto_1

    .line 53
    :cond_5
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getDl01GrondConnectListener()Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;->onConnectLinkTimeOut()V

    goto :goto_1

    .line 48
    :cond_6
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getDl01GrondConnectListener()Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;->onLinkDisconnect()V

    goto :goto_1

    .line 43
    :cond_7
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getDl01GrondConnectListener()Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;->onConnectLinkSuccess()V

    :cond_8
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70889b3c -> :sswitch_5
        -0x488afda5 -> :sswitch_4
        -0xc12281d -> :sswitch_3
        0x14e7e541 -> :sswitch_2
        0x567dbe00 -> :sswitch_1
        0x7cfb805d -> :sswitch_0
    .end sparse-switch
.end method

.method static NotifyOnSetGetDl01OperationResultListener(IILjava/lang/String;)V
    .locals 2

    .line 113
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetGetDl01OperationResultListener()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetGetDl01OperationResultListener()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetGetDl01OperationResultListener()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;

    .line 119
    invoke-interface {v1, p0, p1, p2}, Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;->getDl01OperationResult(IILjava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getDl01BSOperListener()Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getDl01BSOperListener()Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;->dl01BSOper(IILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static native UpdateDl01(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static native airConnectLink()I
.end method

.method public static native airSetGetOperation(ILjava/lang/String;I)I
.end method

.method public static native alterAirDl01Ip(Ljava/lang/String;I)V
.end method

.method public static native alterGroundDl01Ip(Ljava/lang/String;I)V
.end method

.method public static native connectDl01Link()I
.end method

.method public static native disconnectAir()V
.end method

.method public static native disconnectGround()V
.end method

.method static onDl01UpdateResult(II)V
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dl01 JNI \u63a5\u6536\u5230 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqUp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getDl01UpgradeCallBack()Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteDl01UpgradeCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getDl01UpgradeCallBack()Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteDl01UpgradeCallBack;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteDl01UpgradeCallBack;->onUpgradeRemoteDl01Result(II)V

    :cond_0
    const/4 v0, 0x0

    .line 151
    :goto_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_AP03_API;->getRemoteDl01UpgradeStatusList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 152
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_AP03_API;->getRemoteDl01UpgradeStatusList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/callback/RemoteStatusCallback$RemoteDl01UpgradeStatusListener;

    invoke-interface {v1, p0, p1}, Lcom/powervision/natives/callback/RemoteStatusCallback$RemoteDl01UpgradeStatusListener;->onRemoteDl01UpgradeStatusResult(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static native registerDl01Callbacks()I
.end method

.method public static native setGetOperation(ILjava/lang/String;I)I
.end method
