.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$6;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sendAirlinePoint(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)V
    .locals 0

    .line 2451
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$6;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$6;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSailModeChanged(I)V
    .locals 1

    .line 2454
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$6;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3000(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/manager/PVW4SailModelManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/gcs/manager/PVW4SailModelManager;->removeSailChangeListener(Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;)V

    .line 2455
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$6;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$6;->val$type:I

    invoke-static {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)V

    return-void
.end method
