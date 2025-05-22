.class Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$7;
.super Ljava/lang/Object;
.source "PVW4FirmwareUpdateDialogPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->updateShipBodyFirmware(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$7;->this$0:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    iput-object p2, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$7;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$7;->this$0:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->switchMCSX(Ljava/lang/String;)V

    const-wide/16 v1, 0x190

    .line 150
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 152
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 160
    iget-object v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$7;->val$filePath:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/powervision/natives/JniW4Native;->bodyUpgrade(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 161
    :cond_1
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 162
    iget-object v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$7;->val$filePath:Ljava/lang/String;

    const-string v1, "192.168.42.10"

    invoke-static {v0, v1}, Lcom/powervision/natives/JniW4Native;->bodyUpgrade(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$7;->val$filePath:Ljava/lang/String;

    const-string v1, "192.168.1.10"

    invoke-static {v0, v1}, Lcom/powervision/natives/JniW4Native;->bodyUpgrade(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 166
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method return:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqW4_firm_body"

    invoke-static {v2, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 168
    iget-object v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$7;->this$0:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->access$000(Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;)Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;->methodError()V

    :cond_3
    return-void
.end method
