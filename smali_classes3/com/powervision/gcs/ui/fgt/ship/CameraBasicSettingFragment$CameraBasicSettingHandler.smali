.class Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$CameraBasicSettingHandler;
.super Lcom/powervision/gcs/base/BaseHandleReference;
.source "CameraBasicSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraBasicSettingHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/gcs/base/BaseHandleReference<",
        "Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)V
    .locals 0

    .line 389
    invoke-direct {p0, p1}, Lcom/powervision/gcs/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$1;)V
    .locals 0

    .line 386
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$CameraBasicSettingHandler;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;Landroid/os/Message;)V
    .locals 0

    .line 394
    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 386
    check-cast p1, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$CameraBasicSettingHandler;->referenceHandleMessage(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;Landroid/os/Message;)V

    return-void
.end method
