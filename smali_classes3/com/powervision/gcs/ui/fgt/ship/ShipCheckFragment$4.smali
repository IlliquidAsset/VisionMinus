.class Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;
.super Ljava/lang/Object;
.source "ShipCheckFragment.java"

# interfaces
.implements Lcom/powervision/natives/callback/SystemStatusCallback$BatteryStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryStatus(Lcom/powervision/natives/param/BatteryStatusNotifyParam;)V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    iget v1, p1, Lcom/powervision/natives/param/BatteryStatusNotifyParam;->battery_remaining:I

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->access$302(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;I)I

    .line 316
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    iget p1, p1, Lcom/powervision/natives/param/BatteryStatusNotifyParam;->temperature:I

    invoke-static {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->access$402(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;I)I

    .line 318
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 319
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
