.class Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$RemoteCalibratHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "RemoteCalibrationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteCalibratHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;Landroid/os/Message;)V
    .locals 0

    .line 66
    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 58
    check-cast p1, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$RemoteCalibratHandler;->referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;Landroid/os/Message;)V

    return-void
.end method
