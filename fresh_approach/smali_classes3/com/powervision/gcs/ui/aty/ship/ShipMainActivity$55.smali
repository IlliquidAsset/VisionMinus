.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$55;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->onDolphinConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V
    .locals 0

    .line 7407
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$55;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 7410
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$55;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/manager/ShipWarningManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/ShipWarningManager;->removeAllViews()V

    .line 7411
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$55;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;->removeMessages(I)V

    .line 7412
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$55;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipCameraMenuView:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->setConnectStatus(Z)V

    .line 7416
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$55;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$8100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Z)V

    return-void
.end method
