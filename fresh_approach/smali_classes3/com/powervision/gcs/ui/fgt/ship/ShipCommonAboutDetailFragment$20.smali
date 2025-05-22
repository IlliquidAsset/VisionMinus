.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$20;
.super Ljava/lang/Object;
.source "ShipCommonAboutDetailFragment.java"

# interfaces
.implements Lcom/powervision/gcs/callback/FirmWarekUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V
    .locals 0

    .line 725
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$20;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateFailed(II)V
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$20;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->access$700(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;->onUpdateFailed(I)V

    .line 743
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$20;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    invoke-virtual {v0, p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showErrorDialog(II)V

    return-void
.end method

.method public onUpdateSucceed(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$20;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->switchMCSX(Ljava/lang/String;)V

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$20;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->access$700(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;->onUpdateSucceed(I)V

    .line 732
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->initBody()V

    .line 733
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->initRemote(I)V

    return-void
.end method
