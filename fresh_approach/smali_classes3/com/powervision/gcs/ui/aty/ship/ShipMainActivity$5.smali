.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$5;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/gcs/manager/PVW4SailModelManager$OnSailModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->scanAction()V
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

    .line 1767
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$5;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSailModeChanged(I)V
    .locals 2

    .line 1770
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$5;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$5$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$5$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$5;I)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
