.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$23;
.super Ljava/lang/Object;
.source "ShipCommonAboutDetailFragment.java"

# interfaces
.implements Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showFirmWareErrorDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

.field final synthetic val$firmwareUpdateErrorDialogFragment:Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;)V
    .locals 0

    .line 888
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$23;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    iput-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$23;->val$firmwareUpdateErrorDialogFragment:Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$23;->val$firmwareUpdateErrorDialogFragment:Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->dismiss()V

    return-void
.end method

.method public onPositive()V
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$23;->val$firmwareUpdateErrorDialogFragment:Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/update/FirmwareUpdateErrorDialogFragment;->dismiss()V

    return-void
.end method
