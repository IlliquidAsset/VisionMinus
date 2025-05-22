.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/gcs/view/SonarWindowView$SonarDataSendListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->initMap()V
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

    .line 6560
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendDataComonde()V
    .locals 2

    .line 6563
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickSonar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 6564
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickSonar:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6566
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarWindowView:Lcom/powervision/gcs/view/SonarWindowView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView;->setSonarDataSendListener(Lcom/powervision/gcs/view/SonarWindowView$SonarDataSendListener;)V

    .line 6567
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$53;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
