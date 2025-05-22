.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$1;
.super Ljava/lang/Object;
.source "ShipCommonBatteryFragment.java"

# interfaces
.implements Lcom/powervision/natives/callback/SystemStatusCallback$BatteryStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryStatus(Lcom/powervision/natives/param/BatteryStatusNotifyParam;)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;

    iget-object v1, p1, Lcom/powervision/natives/param/BatteryStatusNotifyParam;->voltages:[I

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$002(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;[I)[I

    .line 158
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;

    iget v1, p1, Lcom/powervision/natives/param/BatteryStatusNotifyParam;->battery_remaining:I

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$202(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;I)I

    .line 159
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;

    iget p1, p1, Lcom/powervision/natives/param/BatteryStatusNotifyParam;->temperature:I

    invoke-static {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$102(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;I)I

    .line 160
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p1

    const-string v0, "air_plane_v"

    invoke-virtual {p1, v0}, Lcom/powervision/base/utils/SPHelperUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;->access$400(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$BatteryHandler;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonBatteryFragment$BatteryHandler;->sendEmptyMessage(I)Z

    return-void
.end method
