.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$37;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->onMissionRunReached(I)V
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

    .line 4009
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$37;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 4012
    invoke-static {}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3400()I

    move-result v0

    const-wide/16 v1, 0xbb8

    const/16 v3, 0x78

    if-ne v0, v3, :cond_0

    .line 4016
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$37;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipTopView:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    sget v3, Lcom/powervision/gcs/R$string;->PVW4_Msg_139:I

    invoke-virtual {v0, v3}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->setTitle(I)V

    .line 4017
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$37;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;

    move-result-object v0

    const/16 v3, 0x11

    invoke-virtual {v0, v3, v1, v2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 4018
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3400()I

    move-result v0

    const/16 v3, 0x6e

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    .line 4019
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$37;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0, v4}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5602(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    .line 4020
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$37;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipTopView:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    sget v3, Lcom/powervision/gcs/R$string;->PVW4_Msg_140:I

    invoke-virtual {v0, v3}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->setTitle(I)V

    .line 4025
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$37;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v3, 0x14

    .line 4026
    iput v3, v0, Landroid/os/Message;->what:I

    .line 4027
    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$37;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v3, v3, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapView:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {v3}, Lcom/powervision/condition/view/NationMapView;->getMarkerLinkedList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4028
    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$37;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v3}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;

    move-result-object v3

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v0, v4, v5}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4029
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$37;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v3, v1, v2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4031
    :cond_1
    invoke-static {}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3400()I

    move-result v0

    const/16 v1, 0x82

    const-wide/16 v2, 0x3e8

    if-ne v0, v1, :cond_2

    .line 4032
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$37;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0, v4}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5602(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    .line 4033
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$37;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4034
    :cond_2
    invoke-static {}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3400()I

    move-result v0

    const/16 v1, 0x8c

    if-ne v0, v1, :cond_3

    .line 4035
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$37;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0, v4}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5602(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    .line 4036
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$37;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void
.end method
