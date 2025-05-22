.class Lcom/powervision/camera/views/CameraSettingView$SettingHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "CameraSettingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/camera/views/CameraSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/camera/views/CameraSettingView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/camera/views/CameraSettingView;)V
    .locals 0

    .line 616
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/camera/views/CameraSettingView;Landroid/os/Message;)V
    .locals 0

    .line 621
    invoke-virtual {p1, p2}, Lcom/powervision/camera/views/CameraSettingView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 613
    check-cast p1, Lcom/powervision/camera/views/CameraSettingView;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/camera/views/CameraSettingView$SettingHandler;->referenceHandleMessage(Lcom/powervision/camera/views/CameraSettingView;Landroid/os/Message;)V

    return-void
.end method
