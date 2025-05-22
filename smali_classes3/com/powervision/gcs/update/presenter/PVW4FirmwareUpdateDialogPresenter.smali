.class public Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;
.super Ljava/lang/Object;
.source "PVW4FirmwareUpdateDialogPresenter.java"

# interfaces
.implements Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$Presenter;


# static fields
.field public static isUpdating:Z = false


# instance fields
.field bodyUpgradCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$BodyUpgradCallBack;

.field dl01UpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteDl01UpgradeCallBack;

.field isDircetMcu:Z

.field private mView:Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;

.field mcuPath:Ljava/lang/String;

.field mcuUpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcuUpgradeCallBack;

.field mcu_bUpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcu_BUpgradeCallBack;

.field operListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

.field w49342UpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$W49342UpgradeCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$1;-><init>(Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->operListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    .line 85
    new-instance v0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$2;-><init>(Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->w49342UpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$W49342UpgradeCallBack;

    .line 93
    new-instance v0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$3;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$3;-><init>(Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->mcuUpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcuUpgradeCallBack;

    .line 102
    new-instance v0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$4;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$4;-><init>(Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->dl01UpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteDl01UpgradeCallBack;

    .line 109
    new-instance v0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$5;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$5;-><init>(Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->mcu_bUpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcu_BUpgradeCallBack;

    .line 117
    new-instance v0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$6;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$6;-><init>(Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->bodyUpgradCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$BodyUpgradCallBack;

    const-string v0, ""

    .line 246
    iput-object v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->mcuPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->isDircetMcu:Z

    .line 36
    iput-object p1, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->mView:Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;)Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->mView:Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;

    return-object p0
.end method


# virtual methods
.method public compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "lzqFirm"

    const-string v1, "11111"

    .line 299
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "."

    .line 300
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "\\."

    .line 301
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 305
    array-length v3, v1

    array-length v4, v0

    const/4 v5, 0x0

    if-gt v3, v4, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 308
    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_1

    .line 309
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 310
    aget-object v6, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v4, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_5

    return-object p2

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 322
    :goto_2
    array-length v7, v0

    if-ge v3, v7, :cond_4

    .line 323
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 324
    aget-object v6, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v4, v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_5

    return-object p1

    :cond_5
    if-le v4, v6, :cond_6

    goto :goto_4

    :cond_6
    move-object p1, p2

    :goto_4
    return-object p1

    .line 338
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 339
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 341
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ne v0, v2, :cond_8

    goto :goto_5

    :cond_8
    move-object p1, p2

    :goto_5
    return-object p1

    :cond_9
    const-string p1, ""

    return-object p1
.end method

.method public nowIsBigger(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "\\."

    .line 220
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 222
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x12

    const/16 v2, 0x33

    .line 230
    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    return v1

    .line 234
    :cond_1
    aget-object v3, p1, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v3, v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x2

    .line 238
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ge p1, v2, :cond_3

    return v1

    :cond_3
    return v4
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 42
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->bodyUpgradCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$BodyUpgradCallBack;

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_W4_API;->setBodyUpgradCallBack(Lcom/powervision/natives/callback/W4UpgradeCallBack$BodyUpgradCallBack;)V

    .line 43
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->dl01UpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteDl01UpgradeCallBack;

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_W4_API;->setDl01UpgradeCallBack(Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteDl01UpgradeCallBack;)V

    .line 44
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->mcuUpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcuUpgradeCallBack;

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_W4_API;->setMcuUpgradeCallBack(Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcuUpgradeCallBack;)V

    .line 45
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->mcu_bUpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcu_BUpgradeCallBack;

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_W4_API;->setMcu_bUpgradeCallBack(Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcu_BUpgradeCallBack;)V

    .line 46
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->w49342UpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$W49342UpgradeCallBack;

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_W4_API;->setW49342UpgradeCallBack(Lcom/powervision/natives/callback/W4UpgradeCallBack$W49342UpgradeCallBack;)V

    .line 47
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->operListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->addListener(Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;)V

    const/4 p1, 0x1

    .line 48
    sput-boolean p1, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->isUpdating:Z

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const/4 p1, 0x0

    .line 358
    sput-boolean p1, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->isUpdating:Z

    .line 359
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_W4_API;->setBodyUpgradCallBack(Lcom/powervision/natives/callback/W4UpgradeCallBack$BodyUpgradCallBack;)V

    .line 360
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_W4_API;->setDl01UpgradeCallBack(Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteDl01UpgradeCallBack;)V

    .line 361
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_W4_API;->setW49342UpgradeCallBack(Lcom/powervision/natives/callback/W4UpgradeCallBack$W49342UpgradeCallBack;)V

    .line 362
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_W4_API;->setDl01UpgradeCallBack(Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteDl01UpgradeCallBack;)V

    .line 363
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->operListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->removeListener(Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    return-void
.end method

.method public switchMCSX(Ljava/lang/String;)V
    .locals 2

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fee\u6539\u5e26\u5bbd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    const/4 v1, 0x1

    .line 353
    invoke-static {v0, p1, v1}, Lcom/powervision/natives/JniDl01Native;->setGetOperation(ILjava/lang/String;I)I

    return-void
.end method

.method public updateRemoteDl01Firmware(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 200
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u70b9\u51fb\u5347\u7ea7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "lzqup"

    invoke-static {v2, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "root"

    const-string v2, "RmvQBBAkYdjL4VvD"

    .line 203
    invoke-static {p1, v0, v2, v1, p2}, Lcom/powervision/natives/JniDl01Native;->UpdateDl01(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public updateRemoteMt03Firmware(Ljava/lang/String;)V
    .locals 5

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DL01\u53d1WIFIdown path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqRemote"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iput-object p1, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->mcuPath:Ljava/lang/String;

    .line 266
    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->DL01VERSION:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/powervision/natives/JniW4RemoteNative;->bootLoaderstatus:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->mView:Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;

    if-eqz p1, :cond_6

    .line 289
    invoke-interface {p1}, Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;->methodError()V

    goto :goto_2

    .line 267
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->DL01VERSION:Ljava/lang/String;

    const-string v1, "1.18.62"

    invoke-virtual {p0, v0, v1}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->DL01VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "lzqW4_firm_MCU"

    if-nez v0, :cond_5

    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "\u76f4\u63a5 \u5347 \u7ea7 "

    .line 271
    invoke-static {v2, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iput-boolean v1, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->isDircetMcu:Z

    .line 273
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const-string v4, " usb2"

    if-ne v0, v3, :cond_3

    const-string v0, ""

    .line 275
    invoke-static {v1, p1, v0}, Lcom/powervision/natives/JniW4RemoteNative;->updateMcu(ILjava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-static {v2, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 277
    :cond_3
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    const-string v0, " usb1"

    .line 278
    invoke-static {v2, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192.168.42.2"

    .line 279
    invoke-static {v3, p1, v0}, Lcom/powervision/natives/JniW4RemoteNative;->updateMcu(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 281
    :cond_4
    invoke-static {v2, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192.168.1.2"

    .line 282
    invoke-static {v3, p1, v0}, Lcom/powervision/natives/JniW4RemoteNative;->updateMcu(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :goto_1
    const-string p1, "wifiDown"

    .line 268
    invoke-static {v2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xf

    const-string v0, "DOWN"

    .line 269
    invoke-static {p1, v0, v1}, Lcom/powervision/natives/JniDl01Native;->setGetOperation(ILjava/lang/String;I)I

    :cond_6
    :goto_2
    return-void
.end method

.method public updateRemoteWifi9342Firmware(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "lzqW4_firm_9342"

    const-string v1, " upgrade9342 MT03-A"

    .line 178
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const-string v1, "192.168.1.2"

    .line 181
    invoke-static {p1, p2, p3, v1}, Lcom/powervision/natives/JniW4RemoteNative;->upgrade9342(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 183
    :cond_0
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "192.168.42.2"

    .line 184
    invoke-static {p1, p2, p3, v1}, Lcom/powervision/natives/JniW4RemoteNative;->upgrade9342(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 186
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " res:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateShipBodyFirmware(Ljava/lang/String;)V
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4f20\u8def\u5f84 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4_firm_body"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$7;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$7;-><init>(Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 171
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updateover()V
    .locals 1

    const-string v0, "0"

    .line 215
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->switchMCSX(Ljava/lang/String;)V

    return-void
.end method
