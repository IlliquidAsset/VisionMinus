.class Lcom/powervision/media/ui/activity/DeviceMediaActivity$DeviceMediaHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "DeviceMediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/activity/DeviceMediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceMediaHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/media/ui/activity/DeviceMediaActivity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/activity/DeviceMediaActivity;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/media/ui/activity/DeviceMediaActivity;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 95
    check-cast p1, Lcom/powervision/media/ui/activity/DeviceMediaActivity;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/media/ui/activity/DeviceMediaActivity$DeviceMediaHandler;->referenceHandleMessage(Lcom/powervision/media/ui/activity/DeviceMediaActivity;Landroid/os/Message;)V

    return-void
.end method
