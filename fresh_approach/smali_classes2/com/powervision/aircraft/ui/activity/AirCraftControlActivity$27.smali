.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$27;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;
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

    .line 3609
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$27;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 3612
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 3613
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$27;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$9800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/CompassView;

    move-result-object v0

    neg-float p1, p1

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$27;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$9700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/CompassView;->setRotation(F)V

    .line 3615
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$27;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$9900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$27;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$9700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->setAircraftAngle(F)V

    .line 3616
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$27;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$9900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$27;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$9700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->setGimbalAngle(F)V

    return-void
.end method
