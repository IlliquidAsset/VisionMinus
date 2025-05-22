.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$66;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment$OnShipGuideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->showGuide(Lcom/powervision/gcs/model/event/GuideEvent;)V
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

    .line 8578
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$66;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Z)V
    .locals 1

    .line 8581
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$66;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$8900(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;->dismissAllowingStateLoss()V

    .line 8582
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$66;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$8902(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipGuideDialogFragment;

    return-void
.end method
