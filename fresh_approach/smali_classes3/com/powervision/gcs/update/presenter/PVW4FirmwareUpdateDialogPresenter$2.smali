.class Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$2;
.super Ljava/lang/Object;
.source "PVW4FirmwareUpdateDialogPresenter.java"

# interfaces
.implements Lcom/powervision/natives/callback/W4UpgradeCallBack$W49342UpgradeCallBack;


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

    .line 85
    iput-object p1, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$2;->this$0:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on9342UpgradeStatus(II)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$2;->this$0:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->access$000(Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;)Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;->dolphinRemote9342Update(II)V

    return-void
.end method
