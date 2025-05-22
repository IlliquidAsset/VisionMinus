.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$63;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->rayArm()V
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

    .line 8102
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$63;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 8105
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$63;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-boolean v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->isShipArm:Z

    if-nez v0, :cond_0

    .line 8106
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$63;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$8400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8107
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$63;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$8600(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    .line 8110
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$63;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->isShipArm:Z

    return-void
.end method
