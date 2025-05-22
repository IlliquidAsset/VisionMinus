.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$19;
.super Ljava/lang/Object;
.source "ShipCommonAboutDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showUpgrade(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

.field final synthetic val$basePath:Ljava/lang/String;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$releaseNot:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$19;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    iput-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$19;->val$releaseNot:Ljava/lang/String;

    iput p3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$19;->val$type:I

    iput-object p4, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$19;->val$basePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$19;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " detailFragment storeTheFiles\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$19;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    iget-object v1, v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMain:Lcom/powervision/gcs/view/AboutVersionView;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/AboutVersionView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4Firm"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$19;->val$releaseNot:Ljava/lang/String;

    iget v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$19;->val$type:I

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$19;->val$basePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$19;->val$fileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$19;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    iget-object v4, v4, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMain:Lcom/powervision/gcs/view/AboutVersionView;

    invoke-virtual {v4}, Lcom/powervision/gcs/view/AboutVersionView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->newInstance(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    move-result-object v0

    .line 712
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$19;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    invoke-virtual {v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "PVW4FirmWareUpdateDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 713
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$19;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    iget-object v1, v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->warekUpdateListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->setUpdateListener(Lcom/powervision/gcs/callback/FirmWarekUpdateListener;)V

    return-void
.end method
