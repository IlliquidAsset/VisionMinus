.class Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "NewIMUCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NewIMUCalibrationHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;Landroid/os/Message;)V
    .locals 0

    .line 88
    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->access$000(Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 80
    check-cast p1, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$NewIMUCalibrationHandler;->referenceHandleMessage(Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;Landroid/os/Message;)V

    return-void
.end method
