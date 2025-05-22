.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$48;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSpeedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->initFreeMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 4970
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$48;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeedSelected(F)V
    .locals 2

    .line 4973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelected: ---------------------------> speed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AirCraftCo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4974
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$48;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$11902(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;F)F

    .line 4975
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$48;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4976
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$48;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setTimeLapsePhotoMaxSpeed(F)V

    :cond_0
    return-void
.end method
