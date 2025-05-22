.class Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4$1;
.super Ljava/lang/Object;
.source "ShipCheckFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;->onBatteryStatus(Lcom/powervision/natives/param/BatteryStatusNotifyParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;

    iget-object v0, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;

    iget-object v0, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 324
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;

    iget-object v1, v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-static {v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;

    iget-object v2, v2, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-static {v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->access$400(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->setBatteryData(II)V

    :cond_0
    return-void
.end method
