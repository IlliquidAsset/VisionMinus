.class Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$1;
.super Ljava/lang/Object;
.source "ShipMagnetAdjustActivity.java"

# interfaces
.implements Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMagnetometerCalibrateBackOrientationDetected()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateBackOrientationDetected====>back6"

    .line 342
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->access$100(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateBackSideDone()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateBackSideDone====>back66"

    .line 349
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->access$100(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateCancelled()V
    .locals 1

    const-string v0, "mPlanType===>onMagnetometerCalibrateCancelled====>back66"

    .line 368
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    return-void
.end method

.method public onMagnetometerCalibrateDone()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->access$100(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateDownOrientationDetected()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateDownOrientationDetected====>Donw4"

    .line 298
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->access$100(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateDownSideDone()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateDownSideDone====>donw44"

    .line 304
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->access$100(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateFailed()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->access$100(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "mPlanType===>onMagnetometerCalibrateCancelled====>back66"

    .line 362
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    return-void
.end method

.method public onMagnetometerCalibrateFrontOrientationDetected()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateFrontOrientationDetected====>front5"

    .line 310
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->access$100(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateFrontSideDone()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateFrontSideDone====>front55"

    .line 326
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->access$100(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateInvalid()V
    .locals 1

    const-string v0, "mPlanType===>====>onMagnetometerCalibrateIadbnvalid"

    .line 225
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    return-void
.end method

.method public onMagnetometerCalibrateLeftOrientationDetected()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateLeftOrientationDetected====>left1"

    .line 230
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->access$100(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateLeftSideDone()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateLeftSideDone====>left11"

    .line 237
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->access$100(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateNeedsRotation()V
    .locals 0

    return-void
.end method

.method public onMagnetometerCalibrateRightOrientationDetected()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateRightOrientationDetected====>right2"

    .line 244
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->access$100(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateRightSideDone()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateRightSideDone====>right22"

    .line 260
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->access$100(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateTimeOut()V
    .locals 0

    return-void
.end method

.method public onMagnetometerCalibrateTooFast()V
    .locals 0

    return-void
.end method

.method public onMagnetometerCalibrateUpOrientationDetected()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateUpOrientationDetected====>up3"

    .line 276
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->access$100(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateUpSideDone()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateUpSideDone====>up33"

    .line 287
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->access$100(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
