.class public Lcom/powervision/natives/JniRemoteNative;
.super Ljava/lang/Object;
.source "JniRemoteNative.java"


# static fields
.field public static volatile ele:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Ap03NotifyOnGetBootLoaderStatusListener(I)V
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AP03 bootloader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqRemote"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 211
    :goto_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_AP03_API;->getRemoteGetBootLoaderStatusListenerList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 212
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_AP03_API;->getRemoteGetBootLoaderStatusListenerList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/callback/RemoteStatusCallback$RemoteGetBootLoaderStatusListener;

    invoke-interface {v1, p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$RemoteGetBootLoaderStatusListener;->onGetBootLoaderStatusResult(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnRemoteCalibraResultListener(I)V
    .locals 1

    .line 82
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyRemoteCalibarListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyRemoteCalibarListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;->onRemoteCalibraTimeout()V

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyRemoteCalibarListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;->onRemoteCalibraCompleteFailed()V

    goto :goto_0

    .line 94
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyRemoteCalibarListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;->onRemoteCalibraCompleteSuccess()V

    goto :goto_0

    .line 91
    :cond_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyRemoteCalibarListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;->onRemoteCalibraExtremadone()V

    goto :goto_0

    .line 88
    :cond_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyRemoteCalibarListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;->onRemoteCalibraStartFailed()V

    goto :goto_0

    .line 85
    :cond_5
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyRemoteCalibarListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;->onRemoteCalibraStartSuccess()V

    :cond_6
    :goto_0
    return-void
.end method

.method static Ap03NotifyOnRemoteElectricResultListener(I)V
    .locals 1

    .line 132
    sput p0, Lcom/powervision/natives/JniRemoteNative;->ele:I

    .line 133
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteElectricResultListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteElectricResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteElectricResultListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteElectricResultListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteElectricResultListener;->getElectricResult(I)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnRemoteKeyResultListener(II)V
    .locals 1

    .line 151
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteKeyResultListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteKeyResultListener;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteKeyResultListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteKeyResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteKeyResultListener;->onRemoteUnknow()V

    goto :goto_0

    .line 160
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteKeyResultListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteKeyResultListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteKeyResultListener;->onRemoteCustomKey(I)V

    goto :goto_0

    .line 157
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteKeyResultListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteKeyResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteKeyResultListener;->onRemoteRecord()V

    goto :goto_0

    .line 154
    :cond_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteKeyResultListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteKeyResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteKeyResultListener;->onRemoteTakePic()V

    :cond_4
    :goto_0
    return-void
.end method

.method static Ap03NotifyOnRemoteManualControlResultListener(IIII)V
    .locals 2

    const/4 v0, 0x0

    .line 139
    :goto_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteManualControlResultListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 140
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteManualControlResultListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteManualControlResultListener;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteManualControlResultListener;->getManualControlResult(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnRemoteMcuUpgradeStatusListener(II)V
    .locals 1

    .line 170
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteMcuUpgradeStatusListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    .line 200
    :pswitch_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteMcuUpgradeStatusListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;->setRemoteMcuUpgradeStatusInfoJumpFailed()V

    goto :goto_0

    .line 197
    :pswitch_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteMcuUpgradeStatusListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;->setRemoteMcuUpgradeStatusInfoCheckFileFailed()V

    goto :goto_0

    .line 194
    :pswitch_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteMcuUpgradeStatusListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;->setRemoteMcuUpgradeStatusInfoSendDataFailed()V

    goto :goto_0

    .line 191
    :pswitch_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteMcuUpgradeStatusListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;->setRemoteMcuUpgradeStatusInfoEraseFailed()V

    goto :goto_0

    .line 188
    :pswitch_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteMcuUpgradeStatusListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;->setRemoteMcuUpgradeStatusInfoInbootFailed()V

    goto :goto_0

    .line 185
    :pswitch_5
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteMcuUpgradeStatusListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;->setRemoteMcuUpgradeStatusInfoJumpSuccess()V

    goto :goto_0

    .line 182
    :pswitch_6
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteMcuUpgradeStatusListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;->setRemoteMcuUpgradeStatusInfoCheckFileSuccess()V

    goto :goto_0

    .line 179
    :pswitch_7
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteMcuUpgradeStatusListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;->setRemoteMcuUpgradeStatusInfoSendDataComplete()V

    goto :goto_0

    .line 176
    :pswitch_8
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteMcuUpgradeStatusListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;->setRemoteMcuUpgradeStatusInfoSendingFile(I)V

    goto :goto_0

    .line 173
    :pswitch_9
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteMcuUpgradeStatusListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;->setRemoteMcuUpgradeStatusInfoStartComplete()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static Ap03NotifyOnRemoteThumbwheelResultListener(III)V
    .locals 1

    .line 145
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteThumbwheelResultListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteThumbwheelResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRemoteThumbwheelResultListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteThumbwheelResultListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteThumbwheelResultListener;->getRemoteThumbwheelResult(III)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyRemoteConnectLinkListener(I)V
    .locals 1

    .line 38
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyRemoteConnectLinkListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectLinkListener;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyRemoteConnectLinkListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectLinkListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectLinkListener;->onRemoteLinkConnectFailed()V

    goto :goto_0

    .line 47
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyRemoteConnectLinkListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectLinkListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectLinkListener;->onRemoteLinkConnectTimeOut()V

    goto :goto_0

    .line 44
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyRemoteConnectLinkListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectLinkListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectLinkListener;->onRemoteLinkDisConnected()V

    goto :goto_0

    .line 41
    :cond_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyRemoteConnectLinkListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectLinkListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectLinkListener;->onRemoteLinkConnectSuccess()V

    :cond_4
    :goto_0
    return-void
.end method

.method static Ap03NotifyRemoteConnectListener(I)V
    .locals 1

    .line 57
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyRemoteConnectListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyRemoteConnectListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;->onRemoteHeartbeatReconvered()V

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyRemoteConnectListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;->onRemoteHeartbeatTimeOut()V

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyRemoteConnectListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;->onRemoteConnectFailed()V

    goto :goto_0

    .line 66
    :cond_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyRemoteConnectListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;->onRemoteConnectTimeOut()V

    goto :goto_0

    .line 63
    :cond_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyRemoteConnectListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;->onRemoteDisConnected()V

    goto :goto_0

    .line 60
    :cond_5
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyRemoteConnectListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;->onRemoteConnectSuccess()V

    :cond_6
    :goto_0
    return-void
.end method

.method static Ap03NotifyonRemoteParameterResultIntListener(ILjava/lang/String;I)V
    .locals 1

    .line 107
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyonRemoteParameterResultIntListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyonRemoteParameterResultIntListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;->onRemoteParameterDownloadTimeOut()V

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyonRemoteParameterResultIntListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;->onRemoteParameterUploadTimeOut()V

    goto :goto_0

    .line 119
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyonRemoteParameterResultIntListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;->onRemoteParameterDownloadFailed(Ljava/lang/String;I)V

    goto :goto_0

    .line 116
    :cond_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyonRemoteParameterResultIntListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;->onRemoteParameterUploadFailed(Ljava/lang/String;I)V

    goto :goto_0

    .line 113
    :cond_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyonRemoteParameterResultIntListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;->onRemoteParameterDownloadSuccess(Ljava/lang/String;I)V

    goto :goto_0

    .line 110
    :cond_5
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyonRemoteParameterResultIntListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;->onRemoteParameterUploadSuccess(Ljava/lang/String;I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public static native completeCalibar()I
.end method

.method public static native connectRemote()I
.end method

.method public static native disConnectRemote()I
.end method

.method public static native downloadRemoteParameter(Ljava/lang/String;)I
.end method

.method public static native getBootLoaderStatus()I
.end method

.method public static native mcuUpgrade(Ljava/lang/String;)I
.end method

.method public static native registerRemoteCallbacks()I
.end method

.method public static native remoteConnectLink()I
.end method

.method public static native remoteDisConnectLink()I
.end method

.method public static native startCalibar()I
.end method

.method public static native uploadRemoteFloatParameter(Ljava/lang/String;F)I
.end method

.method public static native uploadRemoteIntParameter(Ljava/lang/String;I)I
.end method

.method public static native uploadRemoteLongParameter(Ljava/lang/String;J)I
.end method
