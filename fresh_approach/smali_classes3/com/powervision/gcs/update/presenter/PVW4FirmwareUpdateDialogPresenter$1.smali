.class Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$1;
.super Ljava/lang/Object;
.source "PVW4FirmwareUpdateDialogPresenter.java"

# interfaces
.implements Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$1;->this$0:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dl01BSOper(IILjava/lang/String;)V
    .locals 1

    const/16 p3, 0xf

    if-ne p1, p3, :cond_2

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DL01 \u63a5\u5230WIFIDOWN "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "lzqW4_firm_MCU"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$1;->this$0:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    iget-object p1, p1, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->mcuPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$1;->this$0:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    iget-boolean p1, p1, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->isDircetMcu:Z

    if-nez p1, :cond_2

    .line 61
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result p1

    const/4 p3, 0x2

    const/4 v0, 0x1

    if-ne p1, p3, :cond_0

    .line 63
    iget-object p1, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$1;->this$0:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    iget-object p1, p1, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->mcuPath:Ljava/lang/String;

    const-string p3, ""

    invoke-static {v0, p1, p3}, Lcom/powervision/natives/JniW4RemoteNative;->updateMcu(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const-string p3, "111111111 usb2"

    .line 64
    invoke-static {p2, p3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result p1

    const/4 p3, 0x0

    if-ne p1, v0, :cond_1

    .line 66
    iget-object p1, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$1;->this$0:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    iget-object p1, p1, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->mcuPath:Ljava/lang/String;

    const-string v0, "192.168.42.2"

    invoke-static {p3, p1, v0}, Lcom/powervision/natives/JniW4RemoteNative;->updateMcu(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const-string p3, "2222222222 usb1"

    .line 67
    invoke-static {p2, p3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "2222222222 wifi"

    .line 69
    invoke-static {p2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$1;->this$0:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    iget-object p1, p1, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->mcuPath:Ljava/lang/String;

    const-string v0, "192.168.1.2"

    invoke-static {p3, p1, v0}, Lcom/powervision/natives/JniW4RemoteNative;->updateMcu(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 72
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " res :"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 74
    iget-object p1, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$1;->this$0:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->access$000(Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;)Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;->methodError()V

    :cond_2
    return-void
.end method
