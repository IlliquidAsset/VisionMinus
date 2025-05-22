.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$22;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lcom/powervision/base/views/LongTouchStickPointView$OnStickPointChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->setListener()V
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

    .line 3524
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$22;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSticViewkDoubleClick()V
    .locals 2

    .line 3533
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$22;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$9300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3534
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$22;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$9302(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)Z

    .line 3535
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$22;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/CameraMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->switchCircleMode()V

    .line 3536
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$22;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$9400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;IZ)V

    :cond_0
    return-void
.end method

.method public onStickPointValueChange(Lcom/powervision/base/views/LongTouchStickPointView;I)V
    .locals 0

    .line 3528
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$22;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$9200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setGimbalPitchPalstance(I)V

    return-void
.end method

.method public onStickViewActionUp()V
    .locals 1

    .line 3542
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$22;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$9500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setStopGimbalPitch()V

    return-void
.end method
