.class Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "IMUCalibrationStartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IMUCalibrationHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;Landroid/os/Message;)V
    .locals 0

    .line 68
    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;->access$000(Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity$IMUCalibrationHandler;->referenceHandleMessage(Lcom/powervision/aircraft/ui/activity/IMUCalibrationStartActivity;Landroid/os/Message;)V

    return-void
.end method
