.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22$1;
.super Ljava/lang/Object;
.source "ShipCommonAboutDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;->onFailed(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 868
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;

    iget-object v0, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    const/16 v1, 0x66

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showErrorDialog(II)V

    .line 869
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;

    iget-object v0, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;->val$pVW4FirmwareDownloadFragment:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->dismissAllowingStateLoss()V

    return-void
.end method
