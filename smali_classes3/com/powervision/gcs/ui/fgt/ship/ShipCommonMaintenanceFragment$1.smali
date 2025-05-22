.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment$1;
.super Ljava/lang/Object;
.source "ShipCommonMaintenanceFragment.java"

# interfaces
.implements Lcom/powervision/natives/callback/RayCallback$ElectronicSpeedControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public electronicSpeedControl(Lcom/powervision/powersdk/param/SpeedControlNotifyParam;)V
    .locals 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "electronicSpeedControl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipCommonMaintenanceFr"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 156
    iput v1, v0, Landroid/os/Message;->what:I

    .line 157
    iget v1, p1, Lcom/powervision/powersdk/param/SpeedControlNotifyParam;->port:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 158
    iget-wide v1, p1, Lcom/powervision/powersdk/param/SpeedControlNotifyParam;->revocount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment$ElectronicHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment$ElectronicHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
