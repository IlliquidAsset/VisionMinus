.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$21;
.super Ljava/lang/Object;
.source "ShipCommonAboutDetailFragment.java"

# interfaces
.implements Lcom/powervision/gcs/update/FirmwareUpdateRemindDialogFragment$OnDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showW4UpgradeDialog(ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;ILjava/lang/String;)V
    .locals 0

    .line 807
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$21;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    iput p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$21;->val$type:I

    iput-object p3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$21;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeClick()V
    .locals 0

    return-void
.end method

.method public onPositiveClick()V
    .locals 4

    .line 810
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$21;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    iget v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$21;->val$type:I

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$21;->val$fileName:Ljava/lang/String;

    iget-object v3, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->releaseNote:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->access$800(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
