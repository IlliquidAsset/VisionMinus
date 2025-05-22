.class Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "MagCalibrationStartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MagCalibrationHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;)V
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;Landroid/os/Message;)V
    .locals 0

    .line 236
    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->access$000(Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 228
    check-cast p1, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$MagCalibrationHandler;->referenceHandleMessage(Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;Landroid/os/Message;)V

    return-void
.end method
