.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3$1;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/gcs/manager/PVW4SailModelManager$OnSailModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;)V
    .locals 0

    .line 1509
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSailModeChanged(I)V
    .locals 2

    .line 1512
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3$1$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3$1$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3$1;I)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
