.class Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$6;
.super Ljava/lang/Object;
.source "PVW4FirmwareUpdateDialogPresenter.java"

# interfaces
.implements Lcom/powervision/natives/callback/W4UpgradeCallBack$BodyUpgradCallBack;


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

    .line 117
    iput-object p1, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$6;->this$0:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpgradeBody(IILjava/lang/String;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter$6;->this$0:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->access$000(Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;)Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;->dolphinUpdata(IILjava/lang/String;)V

    return-void
.end method
