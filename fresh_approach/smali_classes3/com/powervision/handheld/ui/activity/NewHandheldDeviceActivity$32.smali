.class Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$32;
.super Ljava/lang/Object;
.source "NewHandheldDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->updateGimbalStatus(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Ljava/lang/String;I)V
    .locals 0

    .line 3294
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$32;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iput-object p2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$32;->val$name:Ljava/lang/String;

    iput p3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$32;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3297
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$32;->val$name:Ljava/lang/String;

    const-string v1, "PV_GIM_ROLL_ADJ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3298
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$32;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$6300(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AircraftGimBalView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3299
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$32;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$6300(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AircraftGimBalView;

    move-result-object v0

    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$32;->val$value:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AircraftGimBalView;->setPitchValue(F)V

    goto :goto_0

    .line 3301
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$32;->val$name:Ljava/lang/String;

    const-string v1, "PV_GIM_YAW_ADJ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3302
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$32;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$6300(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AircraftGimBalView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3303
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$32;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$6300(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AircraftGimBalView;

    move-result-object v0

    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$32;->val$value:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AircraftGimBalView;->setYawValue(F)V

    :cond_1
    :goto_0
    return-void
.end method
