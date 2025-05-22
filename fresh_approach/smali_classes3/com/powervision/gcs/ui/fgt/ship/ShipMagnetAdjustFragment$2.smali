.class Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$2;
.super Ljava/lang/Object;
.source "ShipMagnetAdjustFragment.java"

# interfaces
.implements Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMagnetometerCalibrateBackOrientationDetected()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateBackOrientationDetected====>back6"

    .line 343
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateBackSideDone()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateBackSideDone====>back66"

    .line 350
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateCancelled()V
    .locals 1

    const-string v0, "mPlanType===>onMagnetometerCalibrateCancelled====>back66"

    .line 369
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    return-void
.end method

.method public onMagnetometerCalibrateDone()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateDownOrientationDetected()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateDownOrientationDetected====>Donw4"

    .line 299
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateDownSideDone()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateDownSideDone====>donw44"

    .line 305
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateFailed()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "mPlanType===>onMagnetometerCalibrateCancelled====>back66"

    .line 363
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    return-void
.end method

.method public onMagnetometerCalibrateFrontOrientationDetected()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateFrontOrientationDetected====>front5"

    .line 311
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateFrontSideDone()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateFrontSideDone====>front55"

    .line 327
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateInvalid()V
    .locals 1

    const-string v0, "mPlanType===>====>onMagnetometerCalibrateIadbnvalid"

    .line 226
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    return-void
.end method

.method public onMagnetometerCalibrateLeftOrientationDetected()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateLeftOrientationDetected====>left1"

    .line 231
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateLeftSideDone()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateLeftSideDone====>left11"

    .line 238
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

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

    .line 245
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateRightSideDone()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateRightSideDone====>right22"

    .line 261
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

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

    .line 277
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onMagnetometerCalibrateUpSideDone()V
    .locals 2

    const-string v0, "mPlanType===>onMagnetometerCalibrateUpSideDone====>up33"

    .line 288
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/show/L;->v([Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
