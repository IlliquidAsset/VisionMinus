.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39$2;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/opensource/geo/ConditionMapInterface$OnBubbleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;->onMapLoaded(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;)V
    .locals 0

    .line 4507
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39$2;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bubbleClick(DD)V
    .locals 3

    .line 4511
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39$2;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarWindowView:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39$2;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;

    iget-object v1, v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView;->cropVideoImage(Landroid/view/WindowManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4513
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39$2;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;

    iget-object v1, v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$39;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    new-instance v2, Lcom/powervision/base/nationmap/model/NationLatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/powervision/base/nationmap/model/NationLatLng;-><init>(DD)V

    const/4 p1, 0x0

    invoke-static {v1, v2, v0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4800(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Lcom/powervision/base/nationmap/model/NationLatLng;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
