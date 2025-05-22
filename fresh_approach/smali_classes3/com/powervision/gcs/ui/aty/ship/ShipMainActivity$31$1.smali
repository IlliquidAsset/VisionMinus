.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$31$1;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$31;->showUp(Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$31;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$31;)V
    .locals 0

    .line 3483
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$31$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$31;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$ShipMainActivity$31$1()V
    .locals 2

    .line 3486
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$31$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$31;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$31;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->surfaceViewMask:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 3486
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$31$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$31;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$31;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipMainActivity$31$1$NGbnoWIQRmec1F4s87MFqz_UDig;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipMainActivity$31$1$NGbnoWIQRmec1F4s87MFqz_UDig;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$31$1;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
