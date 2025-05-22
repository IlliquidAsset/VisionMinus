.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53$1;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53;->sendDataComonde()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53;)V
    .locals 0

    .line 6567
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 6570
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53;

    iget-object v1, v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v1, v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53;

    iget-object v2, v2, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v2, v2, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$7700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Lcom/powervision/gcs/view/CustomCycleLayout;Lcom/powervision/gcs/view/CustomCycleLayout;)V

    return-void
.end method
