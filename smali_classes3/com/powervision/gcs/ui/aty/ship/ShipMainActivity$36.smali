.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$36;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->onMissionRunCurrent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field final synthetic val$seq:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)V
    .locals 0

    .line 3965
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$36;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$36;->val$seq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3968
    invoke-static {}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3400()I

    move-result v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_2

    .line 3979
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$36;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5600(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v0

    iget v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$36;->val$seq:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_1

    return-void

    .line 3985
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$36;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5602(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    .line 3986
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$36;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x14

    .line 3987
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3988
    iget v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$36;->val$seq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3989
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$36;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method
