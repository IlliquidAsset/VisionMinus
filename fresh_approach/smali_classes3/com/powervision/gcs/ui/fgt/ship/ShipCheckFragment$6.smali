.class Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$6;
.super Ljava/lang/Object;
.source "ShipCheckFragment.java"

# interfaces
.implements Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;


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

    .line 360
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$6;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mt03RemoteControlBatterySurplus(I)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$6;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->access$500(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$6;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-static {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->access$502(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;I)I

    .line 367
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$6;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->setRemoteBatteryData(I)V

    :cond_0
    return-void
.end method
