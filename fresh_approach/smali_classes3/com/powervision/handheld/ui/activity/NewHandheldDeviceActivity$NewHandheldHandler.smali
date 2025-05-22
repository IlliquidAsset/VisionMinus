.class Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "NewHandheldDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NewHandheldHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V
    .locals 0

    .line 3848
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Landroid/os/Message;)V
    .locals 0

    .line 3853
    invoke-static {p1, p2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$6900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 3845
    check-cast p1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->referenceHandleMessage(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Landroid/os/Message;)V

    return-void
.end method
